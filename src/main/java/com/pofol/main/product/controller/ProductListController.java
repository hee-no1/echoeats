package com.pofol.main.product.controller;

import com.pofol.main.product.PageHandler;
import com.pofol.main.product.SearchProductCondition;
import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.category.CategoryList;
import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.service.ProductListService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class ProductListController {

    private final ProductListService productListService;
    private final CategoryList categoryList;

    // 이벤트 화면으로 (그냥 만듬)
    @GetMapping("/christmas")
    public String christmasEvent() {
        return "/product/christmasEvent";
    }

    // main 화면으로
    @GetMapping("/main")
    public String goMain(Model model) {
        try {
            // 동적으로 만들 생각 해야함 (그룹으로 나눠서 상품 리스트 정렬)
            List<ProductDto> productList = productListService.getEventList(2L);
            model.addAttribute("productList", productList);
            EventGroupDto eventEx = productListService.getEventEx(2L);
            model.addAttribute("eventEx", eventEx);
            EventGroupDto eventExOne = productListService.getEventEx(3L);
            model.addAttribute("eventExOne", eventExOne);
            List<ProductDto> eventOneList = productListService.getEventList(1L);
            model.addAttribute("eventOneList", eventOneList);

            // 대 카테고리 리스트 정렬 (header의 카테고리 정렬)
            List<CategoryDto> bigCategoryProductList = categoryList.bigCateList();
            model.addAttribute("categoryList", bigCategoryProductList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "main";
    }

    // 상품 상세 화면으로
    @GetMapping("/product/{prod_id}")
    public String product(@PathVariable("prod_id") Long prod_id, Model model) {
        try {
            // 상품 조회
            ProductDto product = productListService.read(prod_id);
            model.addAttribute("product", product);

            // 대 카테고리 리스트 정렬 (header의 카테고리 정렬)
            List<CategoryDto> bigCategoryProductList = categoryList.bigCateList();
            model.addAttribute("categoryList", bigCategoryProductList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/product/product";
    }

    // 상품 리스트 카테고리로 분류
    @GetMapping("/category/{cat_code}")
    public String getCategoryProduct(@PathVariable String cat_code, SearchProductCondition sc, Model model, String type) {

        try {
            // 정렬 타입 (신상품, 혜택율, 낮은 가격, 높은 가격)
            model.addAttribute("type", type);

            // 카테고리 코드
            model.addAttribute("cat_code", cat_code);

            // 카테고리별 상품 정렬 페이지
            model.addAttribute("pageType", "category");

            // 중 카테고리 리스트 (메뉴판에 보여질 것)
            List<CategoryDto> midCategoryList = categoryList.midCateList(cat_code);
            model.addAttribute("midCategoryList", midCategoryList);

            // 대 카테고리 리스트 정렬
            List<CategoryDto> bigCategoryList = categoryList.bigCateList();
            model.addAttribute("categoryList", bigCategoryList);

            // 카테고리 종류별로 상품 리스트 카운트
            int totalCount = productListService.getCategoryProductCount(cat_code);
            model.addAttribute("totalCount", totalCount);

            // 카테고리 종류별로 상품 리스트 정렬
            List<ProductDto> categoryProductList = productListService.getCategoryProductList(cat_code, sc, type);
            model.addAttribute("productList", categoryProductList);

            // 페이징
            PageHandler pageHandler = new PageHandler(totalCount, sc);
            model.addAttribute("pageHandler", pageHandler);

            // 각각의 대 카테고리 이름 가져오기
            for (CategoryDto bigCategoryName : bigCategoryList) {
                if (cat_code.startsWith(bigCategoryName.getCat_code())) {
                    String bigCateName = bigCategoryName.getCat_name();
                    model.addAttribute("bigCateName", bigCateName);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/product/productList";
    }

    // 상품 이름으로 검색한 상품리스트 정렬
    @GetMapping("/searchProduct")
    public String getSearchProduct(SearchProductCondition sc, Model model, String type) {

        try {
            // 정렬 타입 (신상품, 혜택율, 낮은 가격, 높은 가격)
            model.addAttribute("type", type);

            // 상품이름 검색 페이지
            model.addAttribute("pageType", "searchProduct");

            // 검색한 내용
            model.addAttribute("searchContent", sc.getKeyword());

            // 검색한 상품 수
            int totalCount = productListService.getSearchResultCount(sc);
            model.addAttribute("totalCount", totalCount);

            // 검색한 상품 리스트 정렬
            List<ProductDto> searchSelectProduct = productListService.getSearchSelectProduct(sc, type);
            model.addAttribute("productList", searchSelectProduct);

            // 페이징
            PageHandler pageHandler = new PageHandler(totalCount, sc);
            model.addAttribute("pageHandler", pageHandler);

            // 대 카테고리 리스트 정렬 (header의 카테고리 정렬)
            List<CategoryDto> bigCategoryProductList = categoryList.bigCateList();
            model.addAttribute("categoryList", bigCategoryProductList);

        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("totalCount", 0);
        }
        return "/product/productList";
    }

    // 상품 수량에 따라 상품 가격 계산
    @ResponseBody
    @PostMapping("/ProductCalculation")
    public ProductRequest productCalculation(@RequestBody ProductRequest productRequest) {
        productRequest.setDisc_price(productRequest.getQuantity() * productRequest.getDisc_price());
        return productRequest;
    }

    // 상품 상세페이지에서 수량만 가져오기 위한 클래스 (ajax용)
    @Getter
    @Setter
    public static class ProductRequest {

        private Integer disc_price;
        private Integer quantity;

    }
}
