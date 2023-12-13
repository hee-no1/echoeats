package com.pofol.admin.product;

import com.pofol.main.orders1.order.domain.CodeTableDto;
import com.pofol.main.orders1.order.domain.OrderDto;
import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;

import java.util.Date;
import java.util.List;

public interface ProductAdminRepository {

    // 코드테이블에서 상태코드를 가져온다
    List<CodeTableDto> selectCodeType(Integer code_type) throws Exception;

    // 상품 리스트를 가져온다
    ProductDto select(Long prod_id) throws Exception;

    // 상품 전체 리스트를 가져온다
    List<ProductDto> selectAll() throws Exception;

    // 상품목록의 수를 카운트한다 (조건에 따라 변경되게 만들어야함) + 일단 전체 카운트
    int count() throws Exception;

    // 1개의 상품에 등록된 옵션상품 조회
    List<OptionProductDto> selectAllOption(Long prod_id) throws Exception;

    // 조건에 따른 상품 리스트 정렬 (관리자)
    List<ProductDto> searchSelectPage(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception;

    // 조건에 따른 상품 리스트 카운트 (관리자)
    Integer searchResultCnt(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception;

    // 상품관리자 페이지에 대 카테고리 + 중카테고리 정렬
    List<CategoryDto> categoryList() throws Exception;

    // 상품의 상태를 변경한다 (판매상태 + 진열상태)
    int update(ProductDto productDto) throws Exception;

    // 상품상태에 따라 옵션 상품 상태를 변경한다
    int optionUpdate(OptionProductDto optionProductDto) throws Exception;

    // 상품의 판매시작일 + 판매종료일 (판매기간에 따른 상품 상태 변경)
    List<ProductDto> selectSaleDate(String range, Date currentDate) throws Exception;
}
