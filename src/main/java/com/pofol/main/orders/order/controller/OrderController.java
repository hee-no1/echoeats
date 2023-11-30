package com.pofol.main.orders;


import com.pofol.main.orders.checkoutData.CheckoutDataDto;
import com.pofol.main.orders.orderTable.OrderDBService;
import com.pofol.main.orders.payHistoryTable.PayHistoryService;
import com.pofol.main.orders.payTable.PayService;
import com.pofol.main.orders.paymentData.PaymentDataDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class OrderController {

    @Autowired
    OrderService orderService;

    @Autowired
    OrderDBService orderDBService;

    @Autowired
    PayService payService;

    @Autowired
    PayHistoryService payHistoryService;

    @GetMapping("/order")
    public String order(){
        return "redirect:/order/checkout";
    }

    @GetMapping("/order/checkout")
    public String orderCheckout(){
        return "checkout";
    }

    //주문서를 통해 넘어오는 정보
    @PostMapping("/checkout")
    @ResponseBody
    public Long receiveTotalProduct(@RequestBody CheckoutDataDto checkoutData){
        orderService.verifyPayment(checkoutData);
        Long order_id = orderDBService.getOrderId();
        return order_id; //이건 꼭 있어야함
    }

    //포트원을 통해 넘어오는 정보
    @PostMapping("/payment")
    @ResponseBody
    public PaymentDataDto receivePaymentData(@RequestBody PaymentDataDto paymentDataDto){
        payService.writePay(paymentDataDto);
        return paymentDataDto;
    }
}
