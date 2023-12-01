package com.pofol.main.orders.order.controller;


import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.order.service.OrderService;
import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    private final OrderService orderService;

    @Autowired
    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    //장바구니를 통해 넘어오는 정보
    @PostMapping("/checkout")
    public String receiveItems(SelectedItemsDto item, Model m){
        List<SelectedItemsDto> items = new ArrayList<>();
        SelectedItemsDto item1 = new SelectedItemsDto(1L, "1a", 2);
        SelectedItemsDto item2 = new SelectedItemsDto(1L, "1c", 2);
        SelectedItemsDto item3 = new SelectedItemsDto(2L,2);
        items.add(item1);
        items.add(item2);
        items.add(item3);
        OrderDto orderDto = orderService.calculateProductInfo(items);
        System.out.println(orderDto);

        m.addAttribute("orderDto",orderDto);
        return "/order/checkout";
    }

//    @GetMapping("/checkout")
//    public String writeCheckout(@ModelAttribute("data") String data, Model m){
////        OrderDto order = orderService.getOrder();
//////        m.addAttribute("Order",order);
////        System.out.println("hi"+orderDto);
////        m.addAttribute("OrderDto",orderDto);
//
//        return "/order/checkout";
//    }



}
