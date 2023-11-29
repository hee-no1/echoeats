package com.pofol.main.product.controller;

import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.category.CategoryList;
import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.service.ProductListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProductListController {

  private final ProductListService productListService;
  private final CategoryList categoryList;

  @Autowired
  public ProductListController(ProductListService productListService, CategoryList categoryList) {
    this.productListService = productListService;
    this.categoryList = categoryList;
  }

  // 이벤트 화면으로 (그냥 만듬)
  @GetMapping("/christmas")
  public String christmasEvent() {
    return "christmasEvent";
  }

  // main 화면으로 
  @RequestMapping("/main")
  public String main(Model model) {
    try {
      // 동적으로 만들 생각 해야함 (그룹으로 나눠서 상품 리스트 정렬)
      List<ProductDto> productList = productListService.getEventList(2L);
      model.addAttribute("productList", productList);
      EventGroupDto eventEx = productListService.getEventEx(2L);
      model.addAttribute("eventEx", eventEx);
      EventGroupDto eventExOne = productListService.getEventEx(3L);
      model.addAttribute("eventExOne", eventExOne);
      List<ProductDto> eventOneList = productListService.getEventList(1L);
      model.addAttribute("eventOneList", eventOneList);
      
      // 카테고리 리스트 정렬
      List<CategoryDto> categoryList = this.categoryList.cateList();
      model.addAttribute("categoryList", categoryList);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "main";
  }

  // 상품 상세 화면으로
  @GetMapping("/product/{prod_id}")
  public String product(@PathVariable("prod_id") Long prod_id, Model model) {
    try {
      ProductDto product = productListService.read(prod_id);
      model.addAttribute("product", product);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "product";
  }

  // 상품 리스트 카테고리로 분류
  @GetMapping("/category/{cat_code}")
  public String getCategoryProduct(@PathVariable String cat_code, Model model) {
    model.addAttribute("cat_code", cat_code);
    return "categorySortPage";
  }
}
