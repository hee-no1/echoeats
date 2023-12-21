package com.pofol.admin.product;

import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;

import java.util.Date;
import java.util.List;

public interface ProductAdminService {

    // 상품 1개 가져오기
    ProductDto getProduct(Long prod_id) throws Exception;

    // 선택한 상품 여러개 가져오기
    List<ProductDto> getSeveralProduct(Long[] ArrayProdId) throws Exception;

    // 모든 상품 가져오기
    List<ProductDto> getProductAdminList() throws Exception;

    List<ProductDto> getProductAdminSearchList(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto, String Stock) throws Exception;

    Integer getProductAdminSearchCount(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto, String Stock) throws Exception;

    List<CategoryDto> getCategoryList() throws Exception;

    // 1개의 상품 업데이트 -> 여러개 의 상품 업데이트로 변경할 것
    Integer updateProductAdmin(ProductDto productDto) throws Exception;
    // 여러개의 상품 업데이트
    Integer updateProductStatus(List<ProductDto> productDtoList, ProductStatusUpdate productStatusUpdate) throws Exception;

    Integer updateOptionAdmin(OptionProductDto optionProductDto) throws Exception;

    List<ProductDto> getSalePeriod(String range, Date currentDate) throws Exception;
}
