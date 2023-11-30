package com.pofol.main.product.repository;

import com.pofol.main.product.SearchCondition;
import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.ProductDto;

import java.util.List;

public interface ProductListRepository {

  // 진열 상태가 Y 인 경우만 리스트 조회

  // 상품 조회
  ProductDto select(Long prod_id) throws Exception;

  // 전체 진열 상품 리스트 조회
  List<ProductDto> selectAll() throws Exception;

  // 이벤트 상품 리스트 조회
  List<ProductDto> selectEvent(Long evt_gp_id) throws Exception;

  // 카테고리 상품 리스트 조회
  List<ProductDto> selectCategory(String mid_cat_name) throws Exception;

  // 할인율 상품 리스트 조회
  List<ProductDto> selectRateProduct(Double rate) throws Exception;

  // 가격 순 상품 리스트 조회 (높은 가격 or 낮은 가격)
  List<ProductDto> selectProductPrice(Integer prod_price) throws Exception;

  // 상품 리스트 카운트
  int count() throws Exception;

  // 상품 검색 리스트 카운트
  int searchResultCount(SearchCondition sc) throws Exception;

  // 상품 검색 리스트 조회
  List<ProductDto> searchSelect(SearchCondition sc) throws Exception;


  // 판매 등록일 상품 리스트 조회
  // 판매량 상품 리스트 조회

  // 페이지
  // 검색

  // 이벤트 그룹 내용과 상세설명
  EventGroupDto eventEx(Long evt_gp_id) throws Exception;
}
