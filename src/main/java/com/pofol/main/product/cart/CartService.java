package com.pofol.main.product.cart;

import com.pofol.main.orders.order.domain.ProductOrderCheckout;

import java.util.List;

public interface CartService {

    // 상품상세 페이지 상품 수량 계산 (장바구니 담기 위한 계산)
    List<CartDto> goCartProductCount(List<CartDto> cartDtoList) throws Exception;
    // 장바구니에 상품을 저장
    int saveCartProduct(List<CartDto> cartDtoList) throws Exception;
    // 장바구니 페이지에 상품 리스트 정렬
    List<CartDto> getCartProductList(String mem_id) throws Exception;
    // 장바구니에 상품을 삭제
    int removeCartProduct(CartDto cartDto) throws Exception;
    // 장바구니 상품 수량에 따른 가격 계싼
    CartDto getCartProductPrice(CartDto cartDto) throws Exception;
    // 장바구니 상품 주문서로 넘기기
    ProductOrderCheckout getCartProductOrderCheck(SelectedItemsDto selectedItemsDto) throws Exception;
}
