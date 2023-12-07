package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderDetailDto;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class OrderDetailRepositoryImplTest {

    @Autowired
    OrderDetailRepository orderDetailRepository;

    @Test
    public void insert() throws Exception{
        OrderDetailDto orderDetailDto = new OrderDetailDto(10000000002L, "you11", 1L, "1a", "ORDERING", "빼빼로", 2, 4000, "상온", "you11", "you11");
        int insert = orderDetailRepository.insert(orderDetailDto);
        assertThat(insert).isEqualTo(1);
    }

    @Test
    public void select() throws Exception{
        OrderDetailDto select = orderDetailRepository.select(2000000003L);
        System.out.println(select);
    }

    @Test
    public void selectList() throws Exception{
        List<OrderDetailDto> orderDetailDtos = orderDetailRepository.selectList(10000000002L);
        for (OrderDetailDto orderDetailDto : orderDetailDtos) {
            System.out.println(orderDetailDto);
        }
    }

    @Test
    public void updateStatus() throws Exception{
        OrderDetailDto orderDetailDto = new OrderDetailDto(2000000000L,"ORDER_COMPLETE", "you11");
        int i = orderDetailRepository.updateStatus(orderDetailDto);
        assertThat(i).isEqualTo(1);
    }

    @Test
    public void delete() throws Exception{
        int delete = orderDetailRepository.delete(2000000000L);
        assertThat(delete).isEqualTo(1);
    }
}