package com.pofol.main.order.orderProductTest;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class OrderProductDaoImplTest {

    @Autowired
    OrderProductDao orderProductDao;

    @Test
    public void select() throws Exception {
        //환경설정
        ProductDto prod1 = new ProductDto("sandwich", 8000,"냉장");

        //테스트
        ProductDto prod2= orderProductDao.select("sandwich");

        //검증
        assertThat(prod2).isEqualTo(prod1);

    }

}