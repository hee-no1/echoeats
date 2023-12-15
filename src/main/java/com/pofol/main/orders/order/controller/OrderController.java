package com.pofol.main.orders.order.controller;


import com.pofol.main.member.dto.DelNotesDto;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.DelNotesService;
import com.pofol.main.member.service.MemberService;
import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.order.service.OrderService;
import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.product.cart.SelectedItemsDto;
import com.pofol.main.orders.payment.service.PaymentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/order")
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;
    private final DelNotesService delNotesService;
    private final MemberService memberService;
    private final PaymentService paymentService;

    @GetMapping
    public String Order(){
        return "/order/cartSample";
    }


    //장바구니를 통해 넘어오는 정보
    @PostMapping("/checkout")
    public String receiveItems(SelectedItemsDto selectedItemsDto, Model m){
        List<SelectedItemsDto> items = selectedItemsDto.getItems();
        try{
            OrderCheckout orderCheckout = orderService.writeCheckout(items);
            System.out.println(orderCheckout);
            m.addAttribute("checkout",orderCheckout);
            return "/order/checkout";

        } catch (Exception e) {
            e.printStackTrace();
            return "/order/errorPage";
        }
    }


    @ResponseBody
    @PostMapping("/calculatePayment")
    public PaymentDiscountDto calculatePayment(@RequestBody PaymentDiscountDto pdd){
        try{
            System.out.println("계산전"+ pdd);
            PaymentDiscountDto paymentDiscountDto = orderService.calculatePayment(pdd);
            return paymentDiscountDto;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    @GetMapping("/completed/{ord_id}")
    public String orderCompleted(@PathVariable("ord_id") Long ord_id, Model m){
        try{
            //주문 table 변경
            orderService.modifyOrder(ord_id, "ORDER_COMPLETE");

            //주문자 이름, 배송지

            //실 결제 금액, 적립금 (,주문번호) <- 결제 table에서 가지고 오기
            PaymentDto payment = paymentService.getPayment(ord_id);
            m.addAttribute("payment",payment);
            return "/order/orderCompleted";
        } catch (Exception e) {
            e.printStackTrace();
            return "/order/errorPage";
        }
    }

    //팝업창, 배송 요청 사항
    @GetMapping("/checkout/receiverDetails")
    public String receiverDetails(Model m){
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        String mem_id = authentication.getName(); //회원id
        String mem_id = "you11";
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
