package com.pofol.admin.product;

import com.pofol.main.product.domain.ProductDto;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api .Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class ProductAdminServiceImplTest {

    @Autowired
    ProductAdminService productAdminService;

    @Test
    void updateProductAdmin1() {
        // 1000008 판매중 진열함 -> 판매종료 진열안함
        ProductDto productDto = new ProductDto(100008L, "판매종료", "Y", 100);
        try {
            Integer i = productAdminService.updateProductAdmin(productDto);
            assertThat(i).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Test
    void updateProductAdmin2() {
        // 1000008 판매중 진열함 품절 -> 판매중지 진열안함 품절
        ProductDto productDto = new ProductDto(100008L, "판매중", "Y", 0);
        try {
            Integer i = productAdminService.updateProductAdmin(productDto);
            assertThat(i).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Test // 100008번 상품 데이터 원상 복구
    void updateProductAdmin3() {
        // 1000008 판매중 진열함 20
        ProductDto productDto = new ProductDto(100008L, "판매중", "Y", 20);
        try {
            Integer i = productAdminService.updateProductAdmin(productDto);
            assertThat(i).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}