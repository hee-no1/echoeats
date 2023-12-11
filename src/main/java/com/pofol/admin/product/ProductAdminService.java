package com.pofol.admin.product;

import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.domain.ProductDto;

import java.util.List;

public interface ProductAdminService {

    List<ProductDto> getProductAdminList() throws Exception;

    List<ProductDto> getProductAdminSearchList(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception;

    Integer getProductAdminSearchCount(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception;

    List<CategoryDto> getCategoryList() throws Exception;

    Integer updateProductAdmin(ProductDto productDto) throws Exception;
}
