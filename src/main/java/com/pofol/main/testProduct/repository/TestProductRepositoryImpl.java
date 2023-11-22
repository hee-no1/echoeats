package com.pofol.main.testProduct.repository;

import com.pofol.main.testProduct.domain.TestProductDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TestProductRepositoryImpl implements TestProductRepository {

  private final SqlSession sqlSession;

  private final String namespace = "com.pofol.main.testProduct.domain.TestProductDto.";

  @Autowired
  public TestProductRepositoryImpl(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }

  @Override
  public List<TestProductDto> selectAll() throws Exception {
    return sqlSession.selectList(namespace + "selectAll");
  }

  @Override
  public TestProductDto select(Integer pro_id) throws Exception {
    return sqlSession.selectOne(namespace + "select", pro_id);
  }
}
