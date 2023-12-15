package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.text.SimpleDateFormat;

import static org.assertj.core.api.Assertions.*;
import static org.assertj.core.util.DateUtil.now;

@DisplayName("상품 레포지토리 테스트")
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class ProductRepositoryImplTest {

    @Autowired
    private ProductRepository productRepository;
    @Autowired
    ProductListRepository productListRepository;

    @DisplayName("상품 등록 테스트")
    @Test
    void insertTest() throws Exception {
//        // given
//        ProductDto product = new ProductDto(1L, "imgUrl", "907", "테스트 상품", 10000, 10, "할인중", 100, "N", "테스트", "테스트", "N", now(), now(), now());
//
//        // when
//        productRepository.insert(product);
//
//        // then
//        assertThat(productRepository.count()).isEqualTo(14);
    }

    @DisplayName("상픔 리스트 테스트")
    @Test
    void select() throws Exception {
//        new ProductDto(100007, 1, );
    }

    @DisplayName("Date 타입을 String 으로 가져와보기")
    @Test
    void selectStringDate() {
//        try {
//            ProductDto product = productListRepository.select(100100L);
//            String prodRgDate = product.getProd_rg_date();
//            System.out.println("prodRgDate = " + prodRgDate);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
    }
}