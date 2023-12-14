package com.pofol.admin.product;

import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductAdminServiceImpl implements ProductAdminService{

    private final ProductAdminRepository productAdminRepository;

    @Override
    public ProductDto getProduct(Long prod_id) throws Exception {
        return productAdminRepository.select(prod_id);
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
        SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception {

        try {
            return productAdminRepository.searchSelectPage(searchProductAdminCondition, productFilterDto);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Integer getProductAdminSearchCount(SearchProductAdminCondition searchProductAdminCondition, ProductFilterDto productFilterDto) throws Exception {

        try {
            return productAdminRepository.searchResultCnt(searchProductAdminCondition, productFilterDto);
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

    @Override // List로 바꿔야함 (한번에 여러개 변경가능하게) + 변경할 때 핀매기간쪽도 변경해야함
    public Integer updateProductAdmin(ProductDto productDto) throws Exception {
        try {

            // 판매상태에 따른 진열상태 변경
            if (productDto.getSale_sts().equals("판매전") ||
                productDto.getSale_sts().equals("판매종료") ||
                productDto.getSale_sts().equals("판매금지")) {
                productDto.setDisp_sts("N");
            } else if (productDto.getSale_sts().equals("판매중")) {
                productDto.setDisp_sts("Y");
            }

            // 재고가 0개일 시 판매중지로 변경
            if (productDto.getProd_qty() != null && productDto.getProd_qty() == 0) {
                productDto.setDisp_sts("N");
                productDto.setSale_sts("판매중지");
            }

            return productAdminRepository.update(productDto);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<ProductDto> getSalePeriod(String range, Date currentDate) throws Exception {
        return productAdminRepository.selectSaleDate(range, currentDate);
    }
}
