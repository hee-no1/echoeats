package com.pofol.main.product.category;

import java.util.List;

public interface CategoryList {

    // 대 카테고리 정렬
    List<CategoryDto> bigCateList() throws Exception;

    // 중 카테고리 정렬
    List<CategoryDto> midCateList(String cat_code) throws Exception;

    // 전체 카테고리 정렬
    List<CategoryDto> cateList() throws Exception;

    // 상품 등록 카테고리
    List<CategoryDto> enrollCategoryList() throws Exception;

}
