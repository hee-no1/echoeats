package com.pofol.main.orders.sample.productSample;

import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import org.apache.ibatis.annotations.Select;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class RequiredProductRepositoryImplTest {

    @Autowired RequiredProductRepository requiredProductRepository;

    @Test
    @DisplayName("product 테이블 -> requiredProductDto로 select되는지 확인")
    public void test1(){
        RequiredProductDto requiredProductDto = requiredProductRepository.selectProduct(1L);
        System.out.println(requiredProductDto);
    }

    @Test
    @DisplayName("optionProduct 테이블 -> requiredProductDto로 select되는지 확인")
    public void test2(){
        RequiredProductDto requiredProductDto = requiredProductRepository.selectOptionProduct("1a");
        System.out.println(requiredProductDto);
    }

    @Test
    @DisplayName("productInfo 테이블 -> requiredProductDto로 select되는지 확인")
    public void test3(){
        RequiredProductDto requiredProductDto = requiredProductRepository.selectProductInfo(1L);
        System.out.println(requiredProductDto);
    }

//    RequiredProductDto requiredProductDto;
//    @Test
//    @DisplayName("product 테이블 & optionProduct 테이블 & productInfo 테이블 -> requiredProductDto로")
//    public void test4(){
//        requiredProductDto = requiredProductRepository.selectProduct(1L);
//        requiredProductDto = requiredProductRepository.selectOptionProduct("1a");
//        requiredProductDto = requiredProductRepository.selectProductInfo(1L);
//        System.out.println(requiredProductDto);
//    }

    @Test
    @DisplayName("product 테이블 & optionProduct 테이블 & productInfo 테이블 조인 후-> requiredProductDto로")
    public void test5() throws Exception{
        SelectedItemsDto selectedItemsDto = new SelectedItemsDto(1L, "1a", 5);
        RequiredProductDto requiredProductDto2 = requiredProductRepository.selectRequiredProduct(selectedItemsDto);
        System.out.println(requiredProductDto2);
    }

}