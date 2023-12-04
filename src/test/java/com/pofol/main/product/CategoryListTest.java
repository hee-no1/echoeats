package com.pofol.main.product;

import com.pofol.main.product.category.CategoryList;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@DisplayName("카테고리 리스트 테스트")
@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CategoryListTest {
//
//  @Autowired
//  CategoryList categoryList;
//
//  @DisplayName("카테고리 리스트 테스트")
//  @Test
//  void CategoryList() throws Exception {
//
//    System.out.println("categoryList = " + categoryList.cateList());
//
//  }
//
//  @DisplayName("상품 등록할 때, 필요한 카테고리 리스트 테스트")
//  @Test
//  void enrollCategoryList() throws Exception {
//    System.out.println("categoryList = " + categoryList.enrollCategoryList());
//  }

}