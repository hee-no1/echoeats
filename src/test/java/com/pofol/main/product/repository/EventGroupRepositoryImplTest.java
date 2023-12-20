package com.pofol.main.product.repository;

import com.pofol.main.product.domain.EventGroupDto;
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
class EventGroupRepositoryImplTest {

    @Autowired
    EventGroupRepository eventGroupRepository;

    @Test
    void insert() {
        EventGroupDto eventGroupDto = new EventGroupDto(4L, "새해맞이 특별 세일", "새해맞이 특별 세일 빨리 만나보세요" , "새해맞이 세일");
        try {
            assertThat(eventGroupRepository.insert(eventGroupDto)).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void delete() {
        try {
            assertThat(eventGroupRepository.delete(4L)).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}