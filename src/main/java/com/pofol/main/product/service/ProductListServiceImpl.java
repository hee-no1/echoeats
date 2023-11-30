package com.pofol.main.product.service;

import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.repository.ProductListRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductListServiceImpl implements ProductListService {

  private final ProductListRepository productListRepository;

  @Autowired
  public ProductListServiceImpl(ProductListRepository productListRepository) {
    this.productListRepository = productListRepository;
  }

  @Override // 상품 조회
  public ProductDto read(Long prod_id) throws Exception {
    return productListRepository.select(prod_id);
  }

  @Override // 전체 상품 리스트 조회
  public List<ProductDto> getList() throws Exception {
    return productListRepository.selectAll();
  }

  @Override // 이벤트 상품 리스트 조회
  public List<ProductDto> getEventList(Long evt_gp_id) throws Exception {
    return productListRepository.selectEvent(evt_gp_id);
  }


  @Override // 이벤트 그룹 이름과 설명
  public EventGroupDto getEventEx(Long evt_gp_id) throws Exception {
    return productListRepository.eventEx(evt_gp_id);
  }


}
