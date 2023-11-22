package com.pofol.main.testProduct.repository;

import com.pofol.main.testProduct.domain.TestProductDto;

import java.util.List;

public interface TestProductRepository {

  List<TestProductDto> selectAll() throws Exception;
  TestProductDto select(Integer pro_id) throws  Exception;

}
