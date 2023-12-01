package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;

public interface ProductRepository {

    // 상품 등록
    void insert(ProductDto productDto) throws Exception;

    // product테이블 행 개수
    int count() throws Exception;

}
