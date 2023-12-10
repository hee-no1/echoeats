package com.pofol.admin.product;

import com.pofol.main.orders1.order.domain.CodeTableDto;
import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class ProductAdminRepositoryImpl implements ProductAdminRepository{

    private final SqlSession sqlSession;

    private final String namespace = "com.pofol.admin.product.ProductAdminRepository.";

    @Override
    public List<CodeTableDto> selectCodeType(Integer code_type) throws Exception {
        return null;
    }

    @Override
    public List<ProductDto> selectAll() throws Exception {
        return sqlSession.selectList(namespace + "selectAll");
    }

    @Override
    public int count() throws Exception {
        return 0;
    }

    @Override // 조건에 따른 상품 리스트 정렬 (관리자)
    public List<ProductDto> searchSelectPage(
        SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception {

        Map<String, Object> map = new HashMap<>();
        map.put("keyword_type", searchProductAdminCondition.getKeyword_type());
        map.put("keyword", searchProductAdminCondition.getKeyword());
        map.put("offset", searchProductAdminCondition.getOffset());
        map.put("pageSize", searchProductAdminCondition.getPageSize());
        map.put("stock_min", productFilterDto.getStock_min());
        map.put("stock_max", productFilterDto.getPrice_max());
        map.put("selling", productFilterDto.getSelling());
        map.put("display", productFilterDto.getDisplay());
        map.put("option", productFilterDto.getOption());
        map.put("price_min", productFilterDto.getPrice_min());
        map.put("price_max", productFilterDto.getPrice_max());
        map.put("bigCategory", productFilterDto.getBigCategory());
        map.put("midCategory", productFilterDto.getMidCategory());
        return sqlSession.selectList(namespace + "searchSelectPage", map);
    }

    @Override // 조건에 따른 상품 리스트 카운트 (관리자)
    public Integer searchResultCnt(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("keyword_type", searchProductAdminCondition.getKeyword_type());
        map.put("keyword", searchProductAdminCondition.getKeyword());
        map.put("stock_min", productFilterDto.getStock_min());
        map.put("stock_max", productFilterDto.getPrice_max());
        map.put("selling", productFilterDto.getSelling());
        map.put("display", productFilterDto.getDisplay());
        map.put("option", productFilterDto.getOption());
        map.put("price_min", productFilterDto.getPrice_min());
        map.put("price_max", productFilterDto.getPrice_max());
        map.put("bigCategory", productFilterDto.getBigCategory());
        map.put("midCategory", productFilterDto.getMidCategory());
        return sqlSession.selectOne(namespace + "searchResultCnt", map);
    }

    @Override // 카테고리 정렬
    public List<CategoryDto> categoryList() throws Exception {
        return sqlSession.selectList(namespace + "cateList");
    }

    @Override // 상품의 상태를 변경한다 (판매상태 + 진열상태)
    public int update(ProductDto productDto) throws Exception {
        return sqlSession.update(namespace + "update", productDto);
    }
}
