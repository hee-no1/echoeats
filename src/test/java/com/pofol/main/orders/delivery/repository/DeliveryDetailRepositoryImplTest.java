package com.pofol.main.orders.delivery.repository;

import com.pofol.main.orders.delivery.domain.DeliveryDetailDto;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class DeliveryDetailRepositoryImplTest {

    @Autowired
    DeliveryDetailRepository deliveryDetailRepository;

    @Test
    void insert() {
        DeliveryDetailDto deliveryDetailDto = new DeliveryDetailDto(2000000050L, 11111L, "you11", "DELIVERING", "냉장");
        deliveryDetailRepository.insert(deliveryDetailDto);
    }

    @Test
    void select() {
        DeliveryDetailDto select = deliveryDetailRepository.select(2000000050L);
        System.out.println(select);
    }

    @Test
    void update() {
        int update = deliveryDetailRepository.update(2000000050L, "you11", "DELIVERY_COMPLETE");
        assertThat(update).isEqualTo(1);
    }
}