package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.domain.ProductImageDto;

public interface ProductRepository {

    // 상품 등록
    void insert(ProductDto productDto) throws Exception;

    // product테이블 행 개수
    int count() throws Exception;

    // 상품 이미지 등록
    void insertImage(ProductImageDto productImageDto) throws Exception;

}
