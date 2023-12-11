package com.pofol.main.product.service;


import com.pofol.main.product.domain.ProductDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.web.multipart.MultipartFile;

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
        ProductDto product = new ProductDto(1L, "테스트", "911004", "테스트", 1000, 30, "Y", 1, "Y", "Y", "테스트테스트", "테스트테스트테스트테스트테스트테스트", "Y", "테스트원산지", "테스트배송", "테스트포장", "테스트 판매단위", "테스트무게", "테스트기간", "테스트", null, "");

        // when
        productService.productEnroll(product);

        // then
        assertThat(productService.productCount()).isEqualTo(192);
    }
}