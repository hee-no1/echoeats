package com.pofol.main.orders.payment.controller;

import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.service.OrderService;
import com.pofol.main.orders.payment.domain.PaymentDto;
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
@RequiredArgsConstructor
public class PaymentController {

    private final PaymentService paymentService;
    private final OrderService orderService;

    @PostMapping("/payment/verify/prev")
    public ResponseEntity<String> PrevVerify(@RequestBody OrderCheckout oc){
        System.out.println("검증"+oc);
        try{
            Boolean isVerify = paymentService.prevVerify(oc);
            System.out.println(isVerify);
            if(isVerify){ //1차 검증 성공 시
                Long ord_id = orderService.writeOrder(oc);
                return ResponseEntity.ok("" + ord_id);
            }else { //1차 검증 실패 시
                return ResponseEntity.badRequest().body("1차 검증 실패");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("서버 오류 발생");
        }
    }


    @PostMapping("/payment/verify/next")
    public ResponseEntity<String> NextVerify(@RequestBody PaymentDto pd){
        System.out.println(pd);
        try{
            if(pd.getSuccess().equals("true")){ //결제 성공
                pd.setCode_name("PAYMENT_COMPLETE");
                PaymentDto paymentDto = paymentService.writePayment(pd); //결제, 결제이력 table 작성

                if(paymentService.nextVerify(paymentDto)){ //2차 검증 성공 시
                    return ResponseEntity.ok("2차 검증 성공");
                }else { //2차 검증 실패 시
                    //결체 취소 필요
                    return ResponseEntity.badRequest().body("2차 검증 실패");
                }
            }else { //결제 실패 (창 닫음, 잔액부족)
                pd.setCode_name("PAYMENT_FAIL");
                paymentService.writePayment(pd); //결제 table 작성
                orderService.modifyOrder(pd); //주문 table 변경
                return ResponseEntity.badRequest().body("결제 실패");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("서버 오류 발생");
        }
    }

}
