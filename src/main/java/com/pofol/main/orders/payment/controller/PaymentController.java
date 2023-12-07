package com.pofol.main.orders.payment.controller;

import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.payment.service.PaymentService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.http.HttpStatus.*;

@RestController
public class PaymentController {

    private final PaymentService paymentService;

    @Autowired
    public PaymentController(PaymentService paymentService) {
        this.paymentService = paymentService;
    }

    @PostMapping("/payment/verify/prev")
    public ResponseEntity<String> PrevVerify(@RequestBody OrderCheckout oc){
        System.out.println("검증"+oc);
        try{
            Boolean isVerify = paymentService.prevVerify(oc);
            System.out.println(isVerify);
            if(isVerify){ //1차 검증 성공 시
                return ResponseEntity.ok("1차 검증 성공");
            }else { //1차 검증 실패 시
                return ResponseEntity.badRequest().body("1차 검증 실패");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("서버 오류 발생");
        }

    }
}
