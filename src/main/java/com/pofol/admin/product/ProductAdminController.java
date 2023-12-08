package com.pofol.admin.product;

import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
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
    public String getAdminProductList(SearchProductAdminCondition searchProductAdminCondition, Model model, String selling, String display) {

        try {
            // 상품 관리자페이지에 상품조회
//            List<ProductDto> productAdminList = productAdminService.getProductAdminList();
//            model.addAttribute("product", productAdminList);

            // 페이징
            Integer totalCount = productAdminService.getProductAdminSearchCount(searchProductAdminCondition);
            PageHandler pageHandler = new PageHandler(totalCount, searchProductAdminCondition);
            model.addAttribute("ph", pageHandler);

            System.out.println("selling = " + selling);
            System.out.println("display = " + display);
            System.out.println("keyword = " + searchProductAdminCondition.getKeyword());

            // 상품 관리자 페이지에서 조건에 따라 상품조회
            List<ProductDto> productAdminList = productAdminService.getProductAdminSearchList(searchProductAdminCondition, selling, display);
            model.addAttribute("product", productAdminList);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "admin/product/productAdminList";
    }

}
