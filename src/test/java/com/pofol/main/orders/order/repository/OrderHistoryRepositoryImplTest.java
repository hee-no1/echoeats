package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderHistoryDto;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class OrderHistoryRepositoryImplTest {

    @Autowired
    OrderHistoryRepository orderHistoryRepository;

    @Test
    public void insert() throws Exception{
//        OrderHistoryDto orderHistoryDto = new OrderHistoryDto(10000000002L, "ORDER_COMPLETE", "빼빼로 외 2개", 30000, 300000, 33, "card", "you11", "you11");
//        int insert = orderHistoryRepository.insert(orderHistoryDto);
//        assertThat(insert).isEqualTo(1);
    }

    @Test
    public void select() throws Exception{
        OrderHistoryDto select = orderHistoryRepository.select(3000000000L);
        System.out.println(select);
    }

    @Test
    public void selectList() throws Exception{
        List<OrderHistoryDto> orderHistoryDtos = orderHistoryRepository.selectList(10000000001L);
        for (OrderHistoryDto orderHistoryDto : orderHistoryDtos) {
            System.out.println(orderHistoryDto);
        }
    }

    @Test
    public void selectOne() throws Exception{
        OrderHistoryDto orderHistoryDto = orderHistoryRepository.selectOne(10000000001L);
        System.out.println(orderHistoryDto);
    }

    @Test
    public void delete() throws Exception{
        int delete = orderHistoryRepository.delete(3000000003L);
        assertThat(delete).isEqualTo(1);
    }

    @Test
    public void selectFinalOrderHistory() throws Exception{
        Map map = new HashMap();
        map.put("mem_id", "user123");
        map.put("period", 90);
        List<OrderHistoryDto> orderHistoryDtos = orderHistoryRepository.selectFinalOrderHistory(map);
        for (OrderHistoryDto orderHistoryDto : orderHistoryDtos) {
            System.out.println(orderHistoryDto);
        }
    }

}