package com.pofol.main.product.repository;

import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.domain.ProductImageDto;

public interface ProductRepository {

    // 상품 등록
    void insert(ProductDto productDto) throws Exception;

    // product테이블 행 개수
    int count() throws Exception;

    // product_image 테이블 행 개수
    int countImage() throws Exception;

    // 상품 이미지 등록
    void insertImage(ProductImageDto productImageDto) throws Exception;

    // 상품 옵션 등록
    void insertOptionProduct(OptionProductDto optionProductDto) throws Exception;

}
