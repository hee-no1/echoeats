package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.orders.payment.repository.PaymentDiscountRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class PaymentDiscountRepositoryImplTest {

    @Autowired
    PaymentDiscountRepository paymentDiscountRepository;

    @Test
    void insert() throws Exception {
//        PaymentDiscountDto payDiscountDto = new PayDiscountDto(10000000019L, 0, 0, 1000);
//        int insert = payDiscountRepository.insert(payDiscountDto);
//        assertThat(insert).isEqualTo(1);
    }

    @Test
    void select() throws Exception {
        PaymentDiscountDto select = paymentDiscountRepository.select(10000000019L);
        System.out.println(select);
    }

    @Test
    void delete() throws Exception {
        int delete = paymentDiscountRepository.delete(10000000019L);
        assertThat(delete).isEqualTo(1);
    }

}