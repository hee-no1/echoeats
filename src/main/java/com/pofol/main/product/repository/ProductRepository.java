package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;

public interface ProductRepository {

    // 상품 등록
    public void productEnroll(ProductDto productDto) throws Exception;

}
