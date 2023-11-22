package com.pofol.main.product.service;

import com.pofol.main.product.domain.ProdDto;

import java.util.List;

public interface ProdService {

    // 진열된 상품 조회
    List<ProdDto> getList() throws Exception;

}
