package com.pofol.admin.product;

import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductAdminServiceImpl implements ProductAdminService{

    private final ProductAdminRepository productAdminRepository;

    @Override // 1개의 상품 가져오기
    public ProductDto getProduct(Long prod_id) throws Exception {
        return productAdminRepository.select(prod_id);
    }
    
    @Override // 여러개의 상품(내가 선택한 상품) 가져오기
    public List<ProductDto> getSeveralProduct(Long[] ArrayProdId) throws Exception {

        List<ProductDto> productList = new ArrayList<>();
        Arrays.stream(ArrayProdId).forEach(prod_id -> {
            try {
                productList.add(productAdminRepository.select(prod_id));
            } catch (Exception e) {
                e.printStackTrace();
        }
        });
        return productList;
    }

    @Override
    public List<ProductDto> getProductAdminList() throws Exception {

        try {
            return productAdminRepository.selectAll();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<ProductDto> getProductAdminSearchList(
        SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto, String Stock) throws Exception {

        try {
            return productAdminRepository.searchSelectPage(searchProductAdminCondition, productFilterDto, Stock);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Integer getProductAdminSearchCount(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto, String Stock) throws Exception {

        try {
            return productAdminRepository.searchResultCnt(searchProductAdminCondition, productFilterDto, Stock);
        } catch (Exception e) {
            throw  new RuntimeException(e);
        }
    }

    @Override
    public List<CategoryDto> getCategoryList() throws Exception {
        try {
            return productAdminRepository.categoryList();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // 판매기간에 따른 상태변경때문에 일단 보류 (변경해야 함)
    public Integer updateProductAdmin(ProductDto productDto) throws Exception {
        try {
            // 재고가 0개일 시 판매중지로 변경 (현재 매서드에는 필요없는 if문 다른 곳에 쓰이기 때문에 보류)
            if (productDto.getProd_qty() != null && productDto.getProd_qty() == 0) {
                productDto.setDisp_sts("N");
                productDto.setSale_sts("판매중지");
            }

            return productAdminRepository.update(productDto);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    // 여러개의 상품 상태 업데이트
    @Override
    @Transactional
    public Integer updateProductStatus(List<ProductDto> productDtoList, ProductStatusUpdate productStatusUpdate) throws Exception {

        int totalUpdateCount = 0;
        String saleStatus = productStatusUpdate.getSaleStatus();
        String displayStatus = productStatusUpdate.getDisplayStatus();

        if (saleStatus.equals("판매전") ||
            saleStatus.equals("판매종료") ||
            saleStatus.equals("판매금지")) {
            displayStatus = "N";
        } else if (saleStatus.equals("판매중")) {
            displayStatus = "Y";
        }

        for (ProductDto product : productDtoList) {
            if (!saleStatus.isEmpty()) {
                product.setSale_sts(saleStatus);
            }
            if (!displayStatus.isEmpty()) {
                product.setDisp_sts(displayStatus);
            }
            productAdminRepository.update(product);
            totalUpdateCount += totalUpdateCount;
        }
        return totalUpdateCount;
    }

    @Override
    public Integer updateOptionAdmin(OptionProductDto optionProductDto) throws Exception {
        return productAdminRepository.optionUpdate(optionProductDto);
    }

    @Override
    public List<ProductDto> getSalePeriod(String range, Date currentDate) throws Exception {
        return productAdminRepository.selectSaleDate(range, currentDate);
    }
}
