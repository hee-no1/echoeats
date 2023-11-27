package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class ProductRepositoryImplTest {

    private final ProductRepository productRepository;

    @Autowired
    public ProductRepositoryImplTest(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @DisplayName("상품 등록 테스트")
    @Test
    void insertTest() throws Exception {
        // given
        ProductDto product = new ProductDto();

        // when
        product.setProd_id(1);
        product.setEvt_gp_id(1);
        product.setProd_img_id(1);
        product.setCat_code("907");
        product.setProd_name("테스트 상품");
        product.setProd_price(10000);
        product.setRate(10);
        product.setSale_sts("할인중");
        product.setProd_qty(100);
        product.setIs_opt("N");
        product.setDisp_sts("N");
        // product.setRev_num(0);
        System.out.println(product);
        productRepository.insert(product);

        // then
        assertThat(productRepository.count()).isEqualTo(1);
    }
}