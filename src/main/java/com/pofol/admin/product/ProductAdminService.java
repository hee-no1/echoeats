package com.pofol.admin.product;

import com.pofol.main.product.domain.ProductDto;

import java.util.List;

public interface ProductAdminService {

    List<ProductDto> getProductAdminList() throws Exception;

    List<ProductDto> getProductAdminSearchList(SearchProductAdminCondition searchProductAdminCondition, String selling, String display) throws Exception;

    Integer getProductAdminSearchCount(SearchProductAdminCondition searchProductAdminCondition) throws Exception;
}
