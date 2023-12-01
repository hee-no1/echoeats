package com.pofol.main.product.repository;

import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.SearchCondition;
import com.pofol.main.product.repository.ProductListRepository;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductListRepositoryImpl implements ProductListRepository {

  private final String namespace = "com.pofol.main.product.repository.ProductListRepository.";

  private final SqlSession sqlSession;

  @Autowired
  public ProductListRepositoryImpl(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }

  @Override // 상품 리스트 조회
  public ProductDto select(Long prod_id) throws Exception {
    return sqlSession.selectOne(namespace + "select", prod_id);
  }

  @Override // 전체 진열 상품 리스트 조회
  public List<ProductDto> selectAll() throws Exception {
    return sqlSession.selectList(namespace + "selectAll");
  }

  @Override // 이벤트 상품 리스트 조회
  public List<ProductDto> selectEvent(Long evt_gp_id) throws Exception {
    return sqlSession.selectList(namespace + "selectEvent", evt_gp_id);
  }

  @Override // 카테고리 상품 리스트 조회
  public List<ProductDto> selectCategory(String cat_code) throws Exception {
    return sqlSession.selectList(namespace + "selectCategory", cat_code);
  }

  @Override // 할인율 상품 리스트 조회
  public List<ProductDto> selectRateProduct(Double rate) throws Exception {
    return sqlSession.selectList(namespace + " selectRateProduct", rate);
  }

  @Override // 가격 순 상품 리스트 조회 (높은 가격 or 낮은 가격)
  public List<ProductDto> selectProductPrice(Integer prod_price) throws Exception {
    return sqlSession.selectList(namespace + "selectProductPrice", prod_price);
  }

  @Override // 상품 리스트 카운트
  public int count() throws Exception {
    return 0;
  }

  @Override // 상품 검색 리스트 카운트
  public int searchResultCount(SearchCondition sc) throws Exception {
    return 0;
  }

  @Override // 상품 검색 리스트 조회
  public List<ProductDto> searchSelect(SearchCondition sc) throws Exception {
    return null;
  }



  @Override // 이벤트 그룹 이름과 설명
  public EventGroupDto eventEx(Long evt_gp_id) throws Exception {
    return sqlSession.selectOne(namespace + "eventEx", evt_gp_id);
  }
}
