package com.pofol.main.product.service;

import com.pofol.main.product.domain.ProductDto;

public interface ProductService {

  // 상품 등록
  void productEnroll(ProductDto productDto) throws Exception;

  // 상품 수
  int productCount() throws Exception;

}
