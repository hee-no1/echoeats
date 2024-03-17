package com.pofol.main.orders.payment.controller;

import com.pofol.main.orders.order.service.OrderService;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.orders.payment.domain.PaymentInfo;
import com.pofol.main.orders.payment.service.PaymentService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
public class PaymentController {

    private final PaymentService paymentService;
    private final OrderService orderService;

    @PostMapping("/payment/verify/prev")
    public ResponseEntity<String> PrevVerify(@RequestBody PaymentInfo pi){
        log.info("PaymentController verify prev");
        try{
            Boolean isVerify = paymentService.prevVerify(pi);
            log.info("isVerify:{}", isVerify);


            if(isVerify){  //사전 검증 성공
                Long ord_id = orderService.writeOrder(pi); //주문 데이블 작성
                return ResponseEntity.ok(""+ord_id);
            }else {  //사전 검증 실패
                return ResponseEntity.badRequest().body("사전 검증 실패");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("서버 오류 발생");
        }
    }


    @PostMapping("/payment/verify/next")
    public ResponseEntity<String> NextVerify(@RequestBody PaymentDto pd){
        log.info("payController verify/next");
        try{
            if(pd.getSuccess().equals("true")){ //결제 성공
                pd.setCode_name("PAYMENT_COMPLETE");
                PaymentDto paymentDto = paymentService.writePayment(pd); //결제, 결제이력 table 작성

                if(paymentService.nextVerify(paymentDto)){ //사후 검증 성공 시
                    return ResponseEntity.ok("사후 검증 성공");
                }else { //사후 검증 실패 시
                    //결체 취소 필요
                    return ResponseEntity.badRequest().body("사후 검증 실패");
                }
            }else { //결제 실패 (창 닫음, 잔액부족)
                System.out.println("결제 실패");
                pd.setCode_name("PAYMENT_FAIL");
                paymentService.writePayment(pd); //결제 table 작성
                orderService.modifyOrder(pd.getOrd_id(),"ORDER_FAIL"); //주문 table 변경
                return ResponseEntity.badRequest().body("결제 실패");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("서버 오류 발생");
        }
    }

}
