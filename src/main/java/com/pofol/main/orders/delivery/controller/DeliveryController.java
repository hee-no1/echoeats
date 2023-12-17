package com.pofol.main.orders.delivery.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class DeliveryController {


    @GetMapping("/delivery")
    public String getDeliveryList(){
        return "/admin/order/delivery";
    }

}
