package com.pofol.main.product.cart;

import com.pofol.main.orders.order.domain.ProductOrderCheckout;

import java.util.List;

public interface CartService {

    // 장바구니에 상품을 저장
    int saveCartProduct(CartDto cartDto) throws Exception;
    // 장바구니 페이지에 상품 리스트 정렬
    List<CartDto> getCartProductList(String mem_id) throws Exception;
    // 장바구니 상품 주문서로 넘기기
    ProductOrderCheckout getCartProductOrderCheck(SelectedItemsDto selectedItemsDto) throws Exception;
}
