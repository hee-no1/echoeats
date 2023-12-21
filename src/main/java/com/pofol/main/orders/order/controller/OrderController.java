package com.pofol.main.orders.order.controller;

import java.util.List;

import com.pofol.main.member.dto.PointDto;
import com.pofol.main.member.service.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.dto.DelNotesDto;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.service.OrderService;
import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.orders.payment.service.PaymentDiscountService;
import com.pofol.main.orders.payment.service.PaymentService;
import com.pofol.main.product.cart.SelectedItemsDto;

import lombok.RequiredArgsConstructor;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/order")
@RequiredArgsConstructor
public class OrderController {

    private final MemberService memberService;
    private final AddressService addressService;
    private final DelNotesService delNotesService;
    private final CouponService couponService;
    private final PointService pointService;
    private final OrderService orderService;
    private final PaymentService paymentService;
    private final PaymentDiscountService paymentDiscountService;

    @GetMapping
    public String Order(){
        return "/order/cartSample";
    }

    //장바구니를 통해 넘어오는 정보
    @PostMapping("/checkout")
    public String receiveItems(SelectedItemsDto selectedItemsDto, HttpSession session){
        List<SelectedItemsDto> items = selectedItemsDto.getItems();
        try{
            OrderCheckout orderCheckout = orderService.writeCheckout(items);
            System.out.println(orderCheckout);
            session.setAttribute("checkout", orderCheckout);
        } catch (Exception e) {
            e.printStackTrace();
            return "/order/errorPage";
        }
        return "redirect:/order/checkout";
    }

    @GetMapping("/checkout")
    public String showCheckout(Model m, HttpSession session){
        OrderCheckout checkout = (OrderCheckout) session.getAttribute("checkout");
        if (checkout == null) {
            return "redirect:/cart";
        }
        m.addAttribute("checkout", checkout);
        return "/order/checkout";
    }


    @ResponseBody
    @PostMapping("/calculatePayment")
    public PaymentDiscountDto calculatePayment(@RequestBody PaymentDiscountDto pdd){
        try{

            PaymentDiscountDto paymentDiscountDto = orderService.calculatePayment(pdd);
            return paymentDiscountDto;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    @GetMapping("/completed/{ord_id}")
    public String orderCompleted(@PathVariable("ord_id") Long ord_id, Model m, HttpSession session){
        System.out.println("orderController complete/ord_id");
        if(session.getAttribute("checkout") == null){
            return "redirect:/cart";
        }

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String mem_id = authentication.getName(); //회원id

        try{
            /* DB 데이터 */
            orderService.modifyOrder(ord_id, "ORDER_COMPLETE"); //주문 table 변경
            PaymentDiscountDto paymentDiscount = paymentDiscountService.getPaymentDiscount(ord_id);//paymentDiscount 테이블에서 coupon_id 가져오기

            Long cp_id = paymentDiscount.getCoupon_id();
            if(cp_id != null){  //paymentDiscount 테이블에 coupon_id가 있을 때만 쿠폰 테이블 변경
                couponService.modifyCouponStatus(cp_id, mem_id);
            }
            //추가할 거 있음!!!
//            int mem_have_cp_qty = couponService.member_cp_qty_count(authentication.getName());
//            request.getSession().setAttribute("mem_have_cp_qty", mem_have_cp_qty);

            /* 모델로 뷰 단에 넘겨줘야할 것: 주문자 이름, 배송지 */
            String mem_name = memberService.select(mem_id).getMem_name(); //주문자 이름
            AddressDto address = addressService.getDefaultAddress(mem_id); //배송지
            PaymentDto payment = paymentService.getPayment(ord_id); //실 결제 금액, 적립금 (,주문번호) <- 결제 table에서 가지고 오기

            //사용한 적립금 db에 insert
            Integer pointUsed = paymentDiscount.getPoint_used();
            if(pointUsed != 0){
                PointDto point = new PointDto(pointUsed, "사용", "구매 시 사용", mem_id, ord_id);
                pointService.regPoint(point);
            }
            //결제 후 등급에 따라 생성된 적립금 insert
            if(payment.getTot_pay_price() != 0){ //적립금 db에 저장, 적립금이 0일때는 굳이 insert할 필요없다.
                PointDto point = new PointDto(payment.getReserves(), "적립", "구매적립", mem_id, ord_id);
                pointService.regPoint(point);
            }

            m.addAttribute("mem_name", mem_name);
            m.addAttribute("address", address);
            m.addAttribute("payment",payment);
            System.out.println("session"+session);
            session.setAttribute("checkout",null); //세션 종료, url로 치던 뒤로가기로 하던 주문완료 페이지에는 들어올 수 없게
            return "/order/orderCompleted";
        } catch (Exception e) {
            e.printStackTrace();
            return "main";
        }
    }


    //팝업창, 배송 요청 사항
    @GetMapping("/checkout/receiverDetails")
    public String receiverDetails(Model m){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String mem_id = authentication.getName(); //회원id

        try {
            MemberDto member = memberService.select(mem_id);
            DelNotesDto delNotes = delNotesService.getDelNotes();
            m.addAttribute("member", member);
            m.addAttribute("delNotes", delNotes);
            return "/order/receiverDetails";
        } catch (Exception e) {
            e.printStackTrace();
            return "/order/errorPage";
        }
    }

    @ResponseBody
    @PostMapping("/checkout/delNotes")
    public DelNotesDto writeDelNotes(@RequestBody DelNotesDto delNotesDto){
        try{
            System.out.println(delNotesDto);
            delNotesService.writeDelNotes(delNotesDto);
            return delNotesDto;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @ResponseBody
    @GetMapping("/checkout/getDelNotes")
    public DelNotesDto getDelNotes(){
        try{
            return delNotesService.getDelNotes();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
