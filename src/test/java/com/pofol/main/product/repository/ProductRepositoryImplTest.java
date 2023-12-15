package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.domain.ProductImageDto;
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
        // given
        ProductDto product = new ProductDto(1L, "https://s3.ap-northeast-2.amazonaws.com/ecoeats/product/2021/04/16/1618560000000_100000000000", "909009", "페레레로쉐", 100000, 10, "Y", 100, "Y", "Y", "초코계의 T.O.P 페레레로쉐입니다.", "그냥 초콜릿이 가나라면 페레레로쉐는 T.O.P", "Y", "FERRERO", "이탈리아", "새벽배송", "종이포장", "개", "100g", "2024-04-30", null, "100000A", "100000A");

        // when
        productRepository.insert(product);

        // then
        assertThat(productRepository.count()).isEqualTo(191);
    }

    @DisplayName("상품 이미지 등록 테스트")
    @Test
    void insertImageTest() throws Exception {
        // given
        ProductImageDto image = new ProductImageDto("https://jungsukcoding.s3.ap-northeast-2.amazonaws.com/product/https://s3.ap-northeast-2.amazonaws.com/ecoeats/product/2021/04/16/1618560000000_100000000000", 100243L,"100218", "테스트", "테스트");

        // when
        productRepository.insertImage(image);

        // then
        assertThat(productRepository.countImage()).isEqualTo(3);
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