package com.pofol.main;

import com.pofol.main.product.category.CategoryList;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CategoryListTest {

  @Autowired
  CategoryList categoryList;

  @Test
  void CategoryListTest() throws Exception{

      System.out.println("categoryList = " + categoryList.cateList());

  }
}
