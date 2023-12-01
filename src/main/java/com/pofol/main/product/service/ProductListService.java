package com.pofol.main.product.service;

import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.ProductDto;

import java.util.List;

public interface ProductListService {

    // 상품 조회
    ProductDto read(Long prod_id) throws Exception;

    // 전체 상품 리스트 조회
    List<ProductDto> getList() throws Exception;

    // 이벤트 그룹 상품 리스트 조회
    List<ProductDto> getEventList(Long evt_gp_id) throws Exception;


    // 이벤트 그룹 상품 리스트 설명
    EventGroupDto getEventEx(Long evt_gp_id) throws Exception;

}
