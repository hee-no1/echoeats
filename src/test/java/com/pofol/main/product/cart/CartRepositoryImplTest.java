package com.pofol.main.product.cart;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class CartRepositoryImplTest {

    @Autowired
    CartRepository cartRepository;

    @DisplayName("장바구니 DB 저장")
    @Test
    void insertCartProduct() {
//        CartDto cartDto = new CartDto(100007L, "고기", 10000, 8000, "100007A", "초록고기", 4444444, 444444, 100, 1);
//        CartDto cartDto = new CartDto(100100L, 20);
        CartDto cartDto = new CartDto(100007L, "100007A", 20);
        try {
            int i = cartRepository.insertCartProduct(cartDto);
            System.out.println("i = " + i);
            assertThat(i).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @DisplayName("장바구니 정렬")
    @Test
    void getCartProductTest1() {
        try {
            String mem_id = "user123";
            List<CartDto> cartDtos = cartRepository.selectAllCartProduct(mem_id);
            System.out.println("cartDtos = " + cartDtos);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}