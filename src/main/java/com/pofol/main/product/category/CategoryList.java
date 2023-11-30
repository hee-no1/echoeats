package com.pofol.main.product.category;

import java.util.List;

public interface CategoryList {

  // 대 카테고리 정렬
  List<CategoryDto> bigCateList() throws Exception;
  // 중 카테고리 정렬
  List<CategoryDto> midCateList(String cat_code) throws Exception;
}
