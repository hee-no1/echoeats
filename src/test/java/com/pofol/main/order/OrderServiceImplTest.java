package com.pofol.main.order;

import com.pofol.main.order.orderProductTest.ProductDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class OrderServiceImplTest {

    @Autowired
    OrderService orderService;

    @Test
    @DisplayName("검증 테스트")
    public void verifyPaymentTest(){
        //환경설정 <- js 에서 넘어오는 상품을 설정
        ProductDto prod1 = new ProductDto("sandwich", 8000);
        ProductDto prod2 = new ProductDto("chicken", 8500);

        SelectedItemsDto item1 = new SelectedItemsDto(prod1, 1);
        SelectedItemsDto item2 = new SelectedItemsDto(prod2, 2);

        List itemList = new ArrayList<SelectedItemsDto>();
        itemList.add(item1);
        itemList.add(item2);

        TotalProductsDto totalProducts = new TotalProductsDto("샌드위치 외 1개", itemList, 3, 25000);

        //테스트
        Boolean verify = orderService.verifyPayment(totalProducts);

        //검중
        assertThat(verify).isEqualTo(true);



    }
}