package com.pofol.main.product.service;

import com.pofol.main.product.domain.SearchProductCondition;
import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;

import java.util.List;

public interface ProductListService {

  // 상품 조회
  ProductDto read(Long prod_id) throws Exception;

  // 옵션 상품 조회
  List<OptionProductDto> getOptionList(Long prod_id) throws Exception;

  // 전체 상품 리스트 조회
  List<ProductDto> getList() throws Exception;

  // 카테고리 그룹 상품 리스트 조회
  List<ProductDto> getCategoryProductList(String cat_code, SearchProductCondition sc, String type) throws Exception;

  // 카테고리 별 상품 리스트 카운트
  int getCategoryProductCount(String cat_code) throws Exception;

  // 이벤트 그룹 상품 리스트 조회
  List<ProductDto> getEventList(Long evt_gp_id) throws Exception;

  // 이벤트 그룹 상품 리스트 설명
  EventGroupDto getEventEx(Long evt_gp_id) throws Exception;

  // 상품제목으로 검색한 상품 리스트 조회
  List<ProductDto> getSearchSelectProduct(SearchProductCondition sc, String type) throws Exception;

  // 상품 검색 리스트 카운트
  Integer getSearchResultCount(SearchProductCondition sc) throws Exception;

  // 전체 상품 리스트 정렬
  List<ProductDto> getAllProductList() throws Exception;

  // 전체 상품 카운트
  int getAllProductCount() throws Exception;
}
