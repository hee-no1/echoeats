package com.pofol.main.product.service;

import com.pofol.main.product.SearchProductCondition;
import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.repository.ProductListRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductListServiceImpl implements ProductListService {

    private final ProductListRepository productListRepository;

    @Override // 상품 조회
    public ProductDto read(Long prod_id) throws Exception {
        try {
            return productListRepository.select(prod_id);
        } catch (Exception e) {
            throw new RuntimeException();
        }
    }

    @Override
    public List<OptionProductDto> getOptionList(Long prod_id) throws Exception {

        try {
            return productListRepository.selectOption(prod_id);
        } catch (Exception e) {
            throw new RuntimeException();
        }
    }

    @Override // 전체 상품 리스트 조회
    public List<ProductDto> getList() throws Exception {
        try {
            return productListRepository.selectAll();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // 카테고리 상품 리스트 조회
    public List<ProductDto> getCategoryProductList(String cat_code, SearchProductCondition sc, String type) throws Exception {
        try {
            return productListRepository.selectCategoryProductList(cat_code, sc, type);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // 카테고리 상품 리스트 카운트
    public int getCategoryProductCount(String cat_code) throws Exception {
        try {
            return productListRepository.selectCategoryCount(cat_code);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // 이벤트 상품 리스트 조회
    public List<ProductDto> getEventList(Long evt_gp_id) throws Exception {
        try {
            return productListRepository.selectEvent(evt_gp_id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    @Override // 이벤트 그룹 이름과 설명
    public EventGroupDto getEventEx(Long evt_gp_id) throws Exception {
        try {
            return productListRepository.eventEx(evt_gp_id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // 상품제목으로 검색한 상품 리스트 조회
    public List<ProductDto> getSearchSelectProduct(SearchProductCondition sc, String type) throws Exception {
        try {
            return productListRepository.searchSelectProduct(sc, type);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // 상품 검색 리스트 카운트
    public Integer getSearchResultCount(SearchProductCondition sc) throws Exception {
        try {
            return productListRepository.searchResultCount(sc);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


}
