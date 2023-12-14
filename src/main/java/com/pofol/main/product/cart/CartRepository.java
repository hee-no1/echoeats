package com.pofol.main.product.cart;

import com.pofol.main.orders.order.domain.ProductOrderCheckout;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;

import java.util.List;

public interface CartRepository {

    // 체크되어있는 상품 가져오기
    ProductOrderCheckout selectProductOrderCheckout(SelectedItemsDto selectedItemsDto) throws Exception;
    // 장바구니에 상품 데이터 저장
    int insertCartProduct(CartDto cartDto) throws Exception;
    // 장바구니에 담은 상품 장바구니 페이지에 정렬
    List<CartDto> selectAllCartProduct(String mem_id) throws Exception;






    ProductDto selectProduct(Long prod_id) throws Exception;
    OptionProductDto selectOptionProduct(String opt_prod_id) throws Exception;


}
