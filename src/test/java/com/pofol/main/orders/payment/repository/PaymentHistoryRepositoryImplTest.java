package com.pofol.main.orders.payment.repository;

import com.pofol.main.member.dto.MemCouponDto;
import com.pofol.main.member.repository.CouponRepository;
import com.pofol.main.orders.payment.domain.PaymentHistoryDto;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static org.assertj.core.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class PaymentHistoryRepositoryImplTest {

    @Autowired
    PaymentHistoryRepository paymentHistoryRepository;

    @Test
    void insert() throws Exception {
        PaymentHistoryDto paymentHistoryDto = new PaymentHistoryDto("imp1234", 10000000022L, "you11", "PAYMENT_COMPLETE", "kakao", "호빵 외 2개", 1000, "pgpgpg", "you11", "you11");
        int insert = paymentHistoryRepository.insert(paymentHistoryDto);
        assertThat(insert).isEqualTo(1);
    }

    @Test
    void selectOne() throws Exception {
        PaymentHistoryDto paymentHistoryDto = paymentHistoryRepository.selectOne(4000000000L);
        System.out.println(paymentHistoryDto);
    }

    @Test
    void selectList() throws Exception {
        List<PaymentHistoryDto> paymentHistoryDtos = paymentHistoryRepository.selectList(4000000000L);
        for (PaymentHistoryDto paymentHistoryDto : paymentHistoryDtos) {
            System.out.println(paymentHistoryDto);
        }
    }

}