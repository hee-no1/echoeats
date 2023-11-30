package com.pofol.main;

import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.category.CategoryList;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static org.assertj.core.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CategoryListTest {

  @Autowired
  CategoryList categoryList;

  @Test
  void MidCategoryList() throws Exception {

    System.out.println("categoryList = " + categoryList.midCateList("907"));
    try {
      List<CategoryDto> midCateList = categoryList.midCateList("907");

      for (CategoryDto categoryDto : midCateList) {
//        assertThat(categoryDto.getParent_code()).isEqualTo("907");
      }
    } catch (Exception e) {
      e.printStackTrace();
    }

  }
}
