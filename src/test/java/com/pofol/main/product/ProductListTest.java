package com.pofol.main.product;

import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.service.ProductListService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class ProductListTest {

  @Autowired
  ProductListService productListService;

  @Test
  void CateProdListTest() {

    try {
//      List<ProductDto> categoryProductList = productListService.getCategoryProductList("907");
//      Assertions.assertThat(categoryProductList.size()).isEqualTo(4);
//
//      List<ProductDto> categoryProductList1 = productListService.getCategoryProductList("907001");
//      Assertions.assertThat(categoryProductList1.size()).isEqualTo(3);
//
//      List<ProductDto> categoryProductList2 = productListService.getCategoryProductList("908");
//      Assertions.assertThat(categoryProductList2.size()).isEqualTo(4);
//
//      List<ProductDto> categoryProductList3 = productListService.getCategoryProductList("908001");
//      Assertions.assertThat(categoryProductList3.size()).isEqualTo(4);

    } catch (Exception e) {
      e.printStackTrace();
    }


  }
}
