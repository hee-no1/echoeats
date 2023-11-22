package com.pofol.main.product.testProduct.repository;

import com.pofol.main.testProduct.repository.TestProductRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;

//@ExtendWith(SpringExtension.class)
//@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/**/root-context.xml", "file:src/main/webapp/WEB-INF/**/servlet-context.xml" })
//@WebAppConfiguration
@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class TestProductRepositoryImplTest {

  @Autowired
  TestProductRepository testProductRepository;

  @Test
  void aaaa() throws Exception {
    testProductRepository.selectAll();
  }

  @Test
  void bbbb() {

  }

  @Test
  void cccc() {

  }
}