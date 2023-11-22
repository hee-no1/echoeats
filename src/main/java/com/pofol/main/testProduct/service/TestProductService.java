package com.pofol.main.testProduct.service;

import com.pofol.main.testProduct.domain.TestProductDto;

import java.util.List;

public interface TestProductService {
  List<TestProductDto> getList() throws Exception;
  TestProductDto read(Integer pro_id) throws  Exception;
}
