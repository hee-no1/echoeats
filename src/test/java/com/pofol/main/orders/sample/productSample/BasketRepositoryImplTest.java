package com.pofol.main.orders.sample.productSample;

import com.pofol.main.orders.order.domain.ProductOrderCheckout;
import com.pofol.main.product.basket.SelectedItemsDto;
import com.pofol.main.product.basket.BasketRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class BasketRepositoryImplTest {

    @Autowired
    BasketRepository basketRepository;

    @Test
    @DisplayName("product 테이블 & optionProduct 테이블 & productInfo 테이블 조인 후-> requiredProductDto로")
    public void test5() throws Exception{
//        SelectedItemsDto selectedItemsDto = new SelectedItemsDto(1L, "1a", 5);
//        ProductOrderCheckout productOrderCheckout = basketRepository.selectRequiredProduct(selectedItemsDto);
//        System.out.println(productOrderCheckout);
    }

}