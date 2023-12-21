package com.pofol.main.product.repository;

import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.domain.SearchProductCondition;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class ProductListRepositoryImpl implements ProductListRepository {

    private final String productListNamespace = "ecoeats.productListMapper.";
    private final String productNamespace = "ecoeats.productMapper.";

    private final SqlSession sqlSession;

    @Override // 상품 리스트 조회
    public ProductDto select(Long prod_id) throws Exception {
        return sqlSession.selectOne(productNamespace + "selectProduct", prod_id);
    }

    @Override // 옵션 상품 조회
    public List<OptionProductDto> selectOption(Long prod_id) throws Exception {
        return sqlSession.selectList(productNamespace + "selectAllOptionProduct", prod_id);
    }

    @Override // 전체 진열 상품 리스트 조회
    public List<ProductDto> selectAll() throws Exception {
        return sqlSession.selectList(productListNamespace + "selectAll");
    }

    @Override // 이벤트 상품 리스트 조회
    public List<ProductDto> selectEvent(Long evt_gp_id) throws Exception {
        return sqlSession.selectList(productListNamespace + "selectEvent", evt_gp_id);
    }

    @Override // 카테고리 상품 리스트 조회
    public List<ProductDto> selectCategoryProductList(String cat_code, SearchProductCondition sc, String type) throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("cat_code", cat_code);
        map.put("skip", sc.getSkip());
        map.put("pageSize", sc.getPageSize());
        map.put("type", type);
        return sqlSession.selectList(productListNamespace + "selectCategory", map);
    }

    @Override // 카테고리 상품 카운트
    public int selectCategoryCount(String cat_code) throws Exception {
        return sqlSession.selectOne(productListNamespace + "selectCategoryCount", cat_code);
    }

    @Override // 할인율 상품 리스트 조회
    public List<ProductDto> selectRateProduct(Double rate) throws Exception {
        return sqlSession.selectList(productListNamespace + " selectRateProduct", rate);
    }

    @Override // 가격 순 상품 리스트 조회 (높은 가격 or 낮은 가격)
    public List<ProductDto> selectProductPrice(Integer prod_price) throws Exception {
        return sqlSession.selectList(productListNamespace + "selectProductPrice", prod_price);
    }

    @Override // 상품제목으로 검색한 상품 리스트 조회
    public List<ProductDto> searchSelectProduct(SearchProductCondition sc, String type) throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("skip", sc.getSkip());
        map.put("pageSize", sc.getPageSize());
        map.put("keyword", sc.getKeyword());
        map.put("type", type);
        return sqlSession.selectList(productListNamespace + "searchSelectProduct", map);
    }

    @Override // 상품 검색 리스트 카운트
    public int searchResultCount(SearchProductCondition sc) throws Exception {
        return sqlSession.selectOne(productListNamespace + "searchResultCount", sc);
    }

    @Override // 전체 상품 리스트 카운트
    public int count() throws Exception {
        return sqlSession.selectOne(productListNamespace + "count");
    }

    @Override // 이벤트 그룹 이름과 설명
    public EventGroupDto eventEx(Long evt_gp_id) throws Exception {
        return sqlSession.selectOne(productListNamespace + "eventEx", evt_gp_id);
    }
}
