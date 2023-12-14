package com.pofol.main.orders.order.controller;


import com.pofol.main.member.dto.DelNotesDto;
import com.pofol.main.member.service.DelNotesService;
import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.service.OrderService;
import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.product.cart.SelectedItemsDto;
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

    @GetMapping
    public String Order(){
        return "/order/cartSample";
    }


    //장바구니를 통해 넘어오는 정보
    @PostMapping("/checkout")
    public String receiveItems(SelectedItemsDto selectedItemsDto, Model m){
        List<SelectedItemsDto> items = selectedItemsDto.getItems();
        OrderCheckout orderCheckout = orderService.writeCheckout(items);
        System.out.println(orderCheckout);
        m.addAttribute("checkout",orderCheckout);

        return "/order/checkout";
    }


    @ResponseBody
    @PostMapping("/calculatePayment")
    public PaymentDiscountDto calculatePayment(@RequestBody PaymentDiscountDto pd){
        Integer coupon_disc = pd.getCoupon_disc(); // 쿠폰 사용 금액
        Integer reserves_used = pd.getPoint_used(); // 적립금 사용 금액
        int discountPrice = 0;
        System.out.println(pd);

        if(coupon_disc != null){ //쿠폰 할인 금액이 입력 돼 있을 때
            discountPrice += coupon_disc;
        }else if(reserves_used != null){ //적립금 할인 금액이 입력시
            discountPrice += reserves_used;
        }

        pd.setTot_pay_price(pd.getTot_prod_price() - discountPrice + pd.getDlvy_fee());

        System.out.println(pd);
        return pd;
    }


    @GetMapping("/completed/{ord_id}")
    public String orderCompleted(@PathVariable("ord_id") Long ord_id){
        System.out.println(ord_id);
        PaymentDto pd = new PaymentDto(ord_id, "PAYMENT_COMPLETE");
        orderService.modifyOrder(pd);
        return "/order/orderCompleted";
    }

    //팝업창
    @GetMapping("/checkout/receiverDetails")
    public String receiverDetails(Model m){
        DelNotesDto delNotes = delNotesService.getDelNotes();
        m.addAttribute("delNotes", delNotes);
        System.out.println("팝업창으로 들어가는 서버 모델" + delNotes);
        return "/order/receiverDetails";
    }

    @ResponseBody
    @PostMapping("/checkout/delNotes")
    public DelNotesDto writeDelNotes(@RequestBody DelNotesDto delNotesDto){
        System.out.println(delNotesDto);
        delNotesService.writeDelNotes(delNotesDto);
        return delNotesDto;
    }


    @ResponseBody
    @GetMapping("/checkout/getDelNotes")
    public DelNotesDto getDelNotes(){
        return delNotesService.getDelNotes();
    }
}
