package com.pofol.main.orders.delivery.controller;

import com.pofol.admin.order.Repository.AdminOrderDetailRepository;
import com.pofol.main.orders.delivery.domain.DeliveryDto;
import com.pofol.main.orders.delivery.repository.DeliveryRepository;
import com.pofol.main.orders.delivery.service.DeliveryService;
import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.repository.OrderDetailRepository;
import com.pofol.main.orders.order.service.OrderDetailService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;
import java.util.Set;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/delivery")
public class DeliveryController {

    private final OrderDetailService orderDetailService;
    private final DeliveryService deliveryService;



    @GetMapping
    public String getDeliveryList(Model m){
        List<OrderDetailDto> orderDetailDtos = orderDetailService.selectForDelivery();
        m.addAttribute("list", orderDetailDtos);
        return "/admin/order/delivery";
    }

    @ResponseBody
    @PostMapping("/registerWaybillNum")
    public ResponseEntity<String> setDelivering(@RequestBody List<DeliveryDto> deliveryList){
        try{
            deliveryService.writeDelivery(deliveryList);
        }catch (Exception e){
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("DELIVERING fail");
        }
        return ResponseEntity.ok("DELIVERING success");
    }

    @ResponseBody
    @PostMapping("/DeliveryComplete")
    public ResponseEntity<String> setDeliveryComplete(@RequestBody List<Long> waybillNumList){

        try{
            deliveryService.selectListByWaybillNum(waybillNumList);
            return ResponseEntity.ok("DELIVERY_COMPLETE success");
        }catch (Exception e){
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("DELIVERY_COMPLETE fail");
        }
    }
}
