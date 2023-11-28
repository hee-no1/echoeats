package com.pofol.main.product.service;


import com.pofol.main.product.domain.ProductDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;

@DisplayName("상품 서비스 테스트")
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class ProductServiceImplTest {

    @Autowired
    private ProductService productService;

    @DisplayName("상품 등록 테스트")
    @Test
    void productEnrollTest() throws Exception {
        // given
        ProductDto product = new ProductDto(1, 1, "907", "테스트 상품", 10000, 10, "할인중", 100, "N", "테스트", "테스트", "N", "2021-01-01", "2021-01-01", "2021-01-01");

        // when
        productService.productEnroll(product);

        // then
        assertThat(productService.productCount()).isEqualTo(3);
    }
}