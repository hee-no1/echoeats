package com.pofol.main.orderTable;

import com.pofol.main.orderTable.OrderDao;
import com.pofol.main.orderTable.OrderDto;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class OrderDaoImplTest {

    @Autowired
    OrderDao orderDao;

    @Test
    @DisplayName("처음 insert[주문중]")
    public void insert() throws Exception {
        //환경설정
        OrderDto orderDto = new OrderDto("qwer", "빼뻬로외 1개", 5000, 4000, 2, "kakaopay", 2);

        //테스트
        int insertCount = orderDao.insert(orderDto);
        System.out.println(insertCount);

        //검증
        Assertions.assertThat(insertCount).isEqualTo(1);

    }

}