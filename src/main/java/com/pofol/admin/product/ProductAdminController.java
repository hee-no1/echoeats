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
    public String getAdminProductList(
        SearchProductAdminCondition searchProductAdminCondition, Model model,ProductFilterDto productFilterDto) {

        try {
            // 카테고리 정렬
            ObjectMapper objectMapper = new ObjectMapper();
            List<CategoryDto> list = productAdminService.getCategoryList();
            String categoryList = objectMapper.writeValueAsString(list);
            model.addAttribute("categoryList", categoryList);

            // 페이징
            Integer totalCount = productAdminService.getProductAdminSearchCount(searchProductAdminCondition);
            PageHandler pageHandler = new PageHandler(totalCount, searchProductAdminCondition);
            model.addAttribute("ph", pageHandler);

            // 상품 관리자 페이지에서 조건에 따라 상품조회
            List<ProductDto> productAdminList = productAdminService.getProductAdminSearchList(searchProductAdminCondition, productFilterDto);
            model.addAttribute("product", productAdminList);
            model.addAttribute("category", list);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "admin/product/productAdminList";
    }

}
