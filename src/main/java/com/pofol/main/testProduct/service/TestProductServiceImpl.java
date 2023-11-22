package com.pofol.main.testProduct.service;

import com.pofol.main.testProduct.domain.TestProductDto;
import com.pofol.main.testProduct.repository.TestProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestProductServiceImpl implements TestProductService{

  private final TestProductRepository testProductRepository;

  @Autowired
  public TestProductServiceImpl(TestProductRepository testProductRepository) {
    this.testProductRepository = testProductRepository;
  }

  @Override
  public List<TestProductDto> getList() throws Exception {
    return testProductRepository.selectAll();
  }

  @Override
  public TestProductDto read(Integer pro_id) throws Exception {
    return testProductRepository.select(pro_id);
  }
}
