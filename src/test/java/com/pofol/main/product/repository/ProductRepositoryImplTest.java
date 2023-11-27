package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class ProductRepositoryImplTest {

    @DisplayName("상품 등록 테스트")
    @Test
    void productEnrollTest() {
        // given
        ProductDto product = new ProductDto();

        // when
        product.setProd_id(1);
        product.setProd_name("테스트 상품");
        product.setProd_price(10000);
        product.setProd_qty(100);
        product.setSale_sts("판매중");
        product.setDisp_sts("전시중");
        product.setIs_opt("Y");
        product.setCat_code("1");

        // then
        Assertions.assertThat(product.getProd_id()).isEqualTo(1);
    }
}