package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;

@DisplayName("상품 레포지토리 테스트")
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class ProductRepositoryImplTest {

    @Autowired
    private ProductRepository productRepository;

    @DisplayName("상품 등록 테스트")
    @Test
    void insertTest() throws Exception {
        // given
        ProductDto product = new ProductDto(1, 1, "907", "테스트 상품", 10000, 10, "할인중", 100, "N", "테스트", "테스트", "N", "2021-01-01", "2021-01-01", "2021-01-01");

        // when
        productRepository.insert(product);

        // then
        assertThat(productRepository.count()).isEqualTo(1);
    }

}