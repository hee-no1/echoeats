package com.pofol.main.order;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class OrderController {

    @Autowired
    OrderService orderService;

    @GetMapping("/order")
    public String order(){
        return "redirect:/order/checkout";
    }

    @GetMapping("/order/checkout")
    public String orderCheckout(){
        return "checkout";
    }

    @PostMapping("/payment")
    @ResponseBody
    public PaymentDataDto receiveTotalProduct(@RequestBody PaymentDataDto paymentData){
        System.out.println("paymentData = " + paymentData);
        System.out.println(paymentData.getTotalProducts());
        System.out.println(paymentData.getPayDiscount());
        orderService.verifyPayment(paymentData);

        return paymentData;
    }
}
