package com.pofol.main.productTest.list.repository;

import com.pofol.main.productTest.list.domain.DisplayProductDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Repository
public class ProductListRepositoryImpl implements ProductListRepository{

  private final String namespace = "com.pofol.main.productTest.list.repository.ProductListRepository.";

  private final SqlSession sqlSession;

  @Autowired
  public ProductListRepositoryImpl(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }

  @Override // 상품 리스트 조회
  public DisplayProductDto select(Long prod_id) throws Exception {
    return sqlSession.selectOne(namespace + "select", prod_id);
  }

  @Override // 전체 진열 상품 리스트 조회
  public List<DisplayProductDto> selectAll() throws Exception {
    return sqlSession.selectList(namespace + "selectAll");
  }

  @Override // 이벤트 상품 리스트 조회
  public List<DisplayProductDto> selectEvent(Long evt_gp_id) throws Exception {
    return sqlSession.selectList(namespace + "selectEvent", evt_gp_id);
  }

  @Override // 중 카테고리 상품 리스트 조회
  public List<DisplayProductDto> selectMidCategory(String mid_cat_name) throws Exception {
    return sqlSession.selectList(namespace + "selectMidCategory", mid_cat_name);
  }

  @Override // 대 카테고리 상품 리스트 조회
  public List<DisplayProductDto> selectHighCategory(String high_cat_name) throws Exception {
    return sqlSession.selectList(namespace + "selectHighCategory", high_cat_name);
  }

  @Override // 할인율 상품 리스트 조회
  public List<DisplayProductDto> selectRateProduct(Double rate) throws Exception {
    return sqlSession.selectList(namespace + " selectRateProduct", rate);
  }

  @Override // 가격 순 상품 리스트 조회 (높은 가격 or 낮은 가격)
  public List<DisplayProductDto> selectProductPrice(Integer prod_price) throws Exception {
    return sqlSession.selectList(namespace + "selectProductPrice", prod_price);
  }
}
