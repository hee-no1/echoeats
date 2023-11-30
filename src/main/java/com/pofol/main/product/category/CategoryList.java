package com.pofol.main.product.category;

import java.util.List;

public interface CategoryList {

    // 카테고리 정렬
    List<CategoryDto> cateList() throws Exception;

    // 상품 등록 카테고리
    List<CategoryDto> enrollCategoryList() throws Exception;

}
