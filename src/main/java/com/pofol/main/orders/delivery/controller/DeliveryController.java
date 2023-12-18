package com.pofol.main.orders.delivery.controller;

import com.pofol.main.orders.delivery.domain.DeliveryDto;
import com.pofol.main.orders.delivery.repository.DeliveryRepository;
import com.pofol.main.orders.delivery.service.DeliveryService;
import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.repository.OrderDetailRepository;
import com.pofol.main.orders.order.service.OrderDetailService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        String mem_id = authentication.getName(); //회원id
        String mem_id = "you11";

        try{
            for (DeliveryDto delivery : deliveryList) {
                OrderDetailDto dto = new OrderDetailDto(delivery.getOrd_det_id(), "DELIVERING", mem_id);
                orderDetailService.update(dto); //주문 상세table을 기준으로 modify
                delivery.setMember(mem_id);
                delivery.setDlvy_sts("DELIVERING");
                deliveryService.writeDelivery(delivery); //배송table insert
            }
            return ResponseEntity.ok("success");
        }catch (Exception e){
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("server error");
        }
    }
}
