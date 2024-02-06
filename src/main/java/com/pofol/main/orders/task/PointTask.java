package com.pofol.main.orders.task;

import com.pofol.main.member.dto.PointDto;
import com.pofol.main.member.repository.PointRepository;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.orders.payment.repository.PaymentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.List;

@RestControllerAdvice
@Component
@RequiredArgsConstructor
public class PointTask {

    private final PointRepository pointRepository;
    private final PaymentRepository paymentRepository;

    // TODO:매일 새벽 1시에 '배송완료' 또는 '교환완료' 후 7일이 지난 고객에게 적립금을 지급하고, 구매확정으로
    // 중간에 환불을 통한 결제 취소가 있었다면 주문상태가 '배송완료'에서 '환불완료'로 변경된다.
    // 중간에 교환을 했다면 주문상태가 '배송완료'에서 '교환완료'로 변경된다.
    @Scheduled(cron = "0 0 1 * * *")
    public void paymentOfPoint(){
        //주문 DB에서 현재 날짜에서 - 8일하고 주문상태가 '배송완료' + '교환완료' = 총 주문수량 인 것을 모두 꺼내온다.
        List<PaymentDto> paymentDtos = paymentRepository.selectMemberIdForPaymentPoint();

        for (PaymentDto payment : paymentDtos) {
            if(payment.getTot_pay_price() != 0){ //적립금 db에 저장, 적립금이 0일때는 굳이 insert할 필요없다.
                PointDto point = new PointDto(payment.getReserves(), "적립", "구매적립", payment.getMem_id(), payment.getOrd_id());
                try {
                    pointRepository.insertPoint(point);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }
}
