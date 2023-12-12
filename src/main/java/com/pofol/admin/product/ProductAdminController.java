package com.pofol.admin.product;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
    import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class ProductAdminController {

    private final ProductAdminService productAdminService;

    @GetMapping("/product/list")
    public String getAdminProductList(SearchProductAdminCondition searchProductAdminCondition,
                                      Model model,ProductFilterDto productFilterDto) {

        try {
            // 카테고리 정렬
            ObjectMapper objectMapper = new ObjectMapper();
            List<CategoryDto> list = productAdminService.getCategoryList();
            String categoryList = objectMapper.writeValueAsString(list);
            model.addAttribute("categoryList", categoryList);

            // 페이징
            Integer totalCount = productAdminService.getProductAdminSearchCount(searchProductAdminCondition, productFilterDto);
            PageHandler pageHandler = new PageHandler(totalCount, searchProductAdminCondition);
            model.addAttribute("ph", pageHandler);
            model.addAttribute("totalCount", totalCount);

            // 상품 관리자 페이지에서 조건에 따라 상품조회
            List<ProductDto> productAdminList = productAdminService.getProductAdminSearchList(searchProductAdminCondition, productFilterDto);
            model.addAttribute("product", productAdminList);
            model.addAttribute("category", list);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "admin/product/productAdminList";
    }

    // 관리자 페이지에서 상품상태 수정 + 이력 insert
    @GetMapping("product/modify")
    public String AdminProductModify(Model model, ProductDto productDto,
                                     SearchProductAdminCondition searchProductAdminCondition,
                                     ProductFilterDto productFilterDto) {

        try {
            productAdminService.updateProductAdmin(productDto);
        } catch (Exception e) {
            e.printStackTrace();
        }


        return "admin/product/productAdminList";
    }
    
    // 상품 그룹 관리 + main 페이지 그룹별 진열 관리
}
