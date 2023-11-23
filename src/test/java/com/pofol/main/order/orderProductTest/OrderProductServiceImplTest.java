package com.pofol.main.order.orderProductTest;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class OrderProductServiceImplTest {

    @Autowired
    OrderProductService orderProductService;

    @Test
    public void select() throws Exception {
        //환경설정
        ProductDto prod1 = new ProductDto("sandwich", 8000);

        //테스트
        ProductDto prod2= orderProductService.select("sandwich");

        //검증
        assertThat(prod1).isEqualTo(prod2);

    }

}