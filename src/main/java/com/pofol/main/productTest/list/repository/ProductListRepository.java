package com.pofol.main.productTest.list.repository;

import com.pofol.main.productTest.list.domain.DisplayProductDto;

import java.util.List;

public interface ProductListRepository {

  // 진열 상태가 Y 인 경우만 리스트 조회

  // 상품 리스트 조회
  DisplayProductDto select(Long prod_id) throws Exception;
  // 전체 진열 상품 리스트 조회
  List<DisplayProductDto> selectAll() throws Exception;
  // 이벤트 상품 리스트 조회
  List<DisplayProductDto> selectEvent(Long evt_gp_id) throws Exception;
  // 중 카테고리 상품 리스트 조회
  List<DisplayProductDto> selectMidCategory(String mid_cat_name) throws Exception;
  // 대 카테고리 상품 리스트 조회
  List<DisplayProductDto> selectHighCategory(String high_cat_name) throws Exception;
  // 할인율 상품 리스트 조회
  List<DisplayProductDto> selectRateProduct(Double rate) throws Exception;
  // 가격 순 상품 리스트 조회 (높은 가격 or 낮은 가격)
  List<DisplayProductDto> selectProductPrice(Integer prod_price) throws Exception;


  // 판매 등록일 상품 리스트 조회
  // 판매량 상품 리스트 조회

  // 페이지
  // 검색
}
