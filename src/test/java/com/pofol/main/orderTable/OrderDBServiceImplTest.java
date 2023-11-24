package com.pofol.main.orderTable;

import com.pofol.main.order.PayDiscountDto;
import com.pofol.main.order.PaymentDataDto;
import com.pofol.main.order.SelectedItemsDto;
import com.pofol.main.order.TotalProductsDto;
import com.pofol.main.order.orderProductTest.ProductDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class OrderDBServiceImplTest {

    @Autowired
    OrderDBService orderDBService;

    @Test
    @DisplayName("주문table에 데이터 insert [주문중]")
    public void insert(){
        //환경설정
        //1. totalProducts
        ProductDto prod1 = new ProductDto("sandwich", 8000,"냉장");
        ProductDto prod2 = new ProductDto("chicken", 8500,"냉동");

        SelectedItemsDto item1 = new SelectedItemsDto(prod1, 1);
        SelectedItemsDto item2 = new SelectedItemsDto(prod2, 2);

        List itemList = new ArrayList<SelectedItemsDto>();
        itemList.add(item1);
        itemList.add(item2);

        TotalProductsDto totalProducts = new TotalProductsDto("샌드위치 외 1개", itemList, 3, 25000, 24000);


        //2. PayDiscount
        PayDiscountDto payDiscountDto = new PayDiscountDto(0, 0, 0, 1000, 0);


        //3. PaymentData
        PaymentDataDto paymentDataDto = new PaymentDataDto(totalProducts, payDiscountDto);

        //테스트
        orderDBService.insert(paymentDataDto);
    }
}