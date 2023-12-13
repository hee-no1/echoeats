package com.pofol.admin.product;

import com.pofol.main.orders1.order.domain.CodeTableDto;
import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class ProductAdminRepositoryImpl implements ProductAdminRepository{

    private final SqlSession sqlSession;

    private final String productAdminNamespace = "com.pofol.admin.product.ProductAdminRepository.";
    private final String categoryNamespace = "com.pofol.main.product.category.CategoryDto.";

    @Override
    public List<CodeTableDto> selectCodeType(Integer code_type) throws Exception {
        return null;
    }

    @Override
    public ProductDto select(Long prod_id) throws Exception {
        return sqlSession.selectOne(productAdminNamespace + "select", prod_id);
    }

    @Override
    public List<ProductDto> selectAll() throws Exception {
        return sqlSession.selectList(productAdminNamespace + "selectAll");
    }

    @Override
    public int count() throws Exception {
        return 0;
    }

    @Override
    public List<OptionProductDto> selectAllOption(Long prod_id) throws Exception {
        return sqlSession.selectList(productAdminNamespace + "selectOption", prod_id);
    }

    @Override // 조건에 따른 상품 리스트 정렬 (관리자)
    public List<ProductDto> searchSelectPage(
        SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception {

        Map<String, Object> map = new HashMap<>();
        map.put("offset", searchProductAdminCondition.getOffset());
        map.put("pageSize", searchProductAdminCondition.getPageSize());
        productFilter(searchProductAdminCondition, productFilterDto, map);
        return sqlSession.selectList(productAdminNamespace + "searchSelectPage", map);
    }

    @Override // 조건에 따른 상품 리스트 카운트 (관리자)
    public Integer searchResultCnt(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception {
        Map<String, Object> map = new HashMap<>();
        productFilter(searchProductAdminCondition, productFilterDto, map);
        return sqlSession.selectOne(productAdminNamespace + "searchResultCnt", map);
    }

    private void productFilter(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto, Map<String, Object> map) {
        map.put("keyword_type", searchProductAdminCondition.getKeyword_type());
        map.put("keyword", searchProductAdminCondition.getKeyword());
        map.put("stock_min", productFilterDto.getStock_min());
        map.put("stock_max", productFilterDto.getStock_max());
        map.put("selling", productFilterDto.getSelling());
        map.put("display", productFilterDto.getDisplay());
        map.put("option", productFilterDto.getOption());
        map.put("price_min", productFilterDto.getPrice_min());
        map.put("price_max", productFilterDto.getPrice_max());
        map.put("bigCategory", productFilterDto.getBigCategory());
        map.put("midCategory", productFilterDto.getMidCategory());
    }

    @Override // 카테고리 정렬
    public List<CategoryDto> categoryList() throws Exception {
        return sqlSession.selectList(categoryNamespace + "cateList");
    }

    @Override // 상품의 상태를 변경한다 (판매상태 + 진열상태)
    public int update(ProductDto productDto) throws Exception {
        return sqlSession.update(productAdminNamespace + "update", productDto);
    }

    @Override // 상품 상태에 따라 옵션 상품 상태를 변경한다
    public int optionUpdate(OptionProductDto optionProductDto) throws Exception {
        return sqlSession.update(productAdminNamespace + "optionUpdate", optionProductDto);
    }

    @Override // 상품의 판매시작일 + 판매종료일 (판매기간에 따른 상품 상태 변경)
    public List<ProductDto> selectSaleDate(String range, Date currentDate) throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("range", range);
        map.put("currentDate", currentDate);
        return sqlSession.selectList(productAdminNamespace + "selectSaleDate", map);
    }
}
