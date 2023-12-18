package com.pofol.main.orders.delivery.controller;

import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.repository.OrderDetailRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class DeliveryController {

    private final OrderDetailRepository orderDetailRepository;


    @GetMapping("/delivery")
    public String getDeliveryList(Model m){
        List<OrderDetailDto> orderDetailDtos = orderDetailRepository.selectForDelivery();
        m.addAttribute("list", orderDetailDtos);
        return "/admin/order/delivery";
    }

}
