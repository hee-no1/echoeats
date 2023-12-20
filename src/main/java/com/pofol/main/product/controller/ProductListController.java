package com.pofol.main.product.controller;

import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.service.GradeService;
import com.pofol.main.product.domain.PageHandler;
import com.pofol.main.product.domain.SearchProductCondition;
import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.category.CategoryList;
import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.exception.ExpiredProductException;
import com.pofol.main.product.exception.HandlerProductException;
import com.pofol.main.product.exception.ProductStatusException;
import com.pofol.main.product.service.EventGroupService;
import com.pofol.main.product.service.ProductListService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
@Slf4j
public class ProductListController {

    private final ProductListService productListService;
    private final CategoryList categoryList;
    private final GradeService gradeService;
    private final EventGroupService eventGroupService;

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

            // 1번 상품 정렬 칸
            EventGroupDto eventNo1 = eventGroupService.getEvent(2L);
            model.addAttribute("eventNo1", eventNo1);
            List<ProductDto> productList1 = productListService.getEventList(2L);
            model.addAttribute("productList1", productList1);

            // 2번 상품 정렬 칸
            EventGroupDto eventNo2 = eventGroupService.getEvent(3L);
            model.addAttribute("eventNo2", eventNo2);
            List<ProductDto> productList2 = productListService.getEventList(1L);
            model.addAttribute("productList2", productList2);

            // 3번 상품 정렬 칸
            EventGroupDto eventNo3 = eventGroupService.getEvent(4L);
            model.addAttribute("eventNo3", eventNo3);
            List<ProductDto> productList3 = productListService.getEventList(2L);
            model.addAttribute("productList3", productList3);

            // 4번 상품 정렬 칸
            EventGroupDto eventNo4 = eventGroupService.getEvent(5L);
            model.addAttribute("eventNo4", eventNo4);
            List<ProductDto> productList4 = productListService.getEventList(2L);
            model.addAttribute("productList4", productList4);

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

            // 옵션이 존재하는 상품일 시 옵션상품 조회
            if (product.getIs_opt().equals("Y")) {
                List<OptionProductDto> optionList = productListService.getOptionList(prod_id);
                model.addAttribute("optionList", optionList);
                model.addAttribute("option", "option");
            }

            // 대 카테고리 리스트 정렬 (header의 카테고리 정렬)
            List<CategoryDto> bigCategoryProductList = categoryList.bigCateList();
            model.addAttribute("categoryList", bigCategoryProductList);

            // 회원 등급에 따른 적립금 계산
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String memberID = authentication.getName();

            // 로그인 상태일 때 (적립금 계산) + (회원 아이디 가져오기)
            if(!(authentication instanceof AnonymousAuthenticationToken)){
                GradeDto memberGrade = gradeService.show_grade(memberID);
                model.addAttribute("memberGrade", memberGrade);

                Integer saveMoney = product.getDisc_price() * memberGrade.getAcm_rate() / 100;
                model.addAttribute("saveMoney", saveMoney);

                model.addAttribute("memberID", memberID);
            }

            // 현재 판매하지 않는 상품 조회시 예외발생 (판매기간 + 질열상태 + 판매상태)
            if (product.isSaleExpired()) {
                throw new ExpiredProductException("상품의 판매기간이 지났습니다.");
            }
            if (product.getDisp_sts().equals("N") || !product.getSale_sts().equals("판매중")) {
                throw new ProductStatusException("현재 판매중인 상품이 아닙니다.");
            }

        } catch (ExpiredProductException expiredProductException) {
            HandlerProductException handlerProductException = new HandlerProductException();
            handlerProductException.ExpiredProductExceptionHandler(expiredProductException);
            return "redirect:/main";
        } catch (ProductStatusException productStatusException) {
            HandlerProductException handlerProductException = new HandlerProductException();
            handlerProductException.ProductStatusExceptionHandler(productStatusException);
            return "redirect:/main";
        } catch (Exception exception) {
            exception.printStackTrace();
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
            return "redirect:/main";
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

    // 신상품 상품 리스트 페이지로 이동
    @GetMapping("/newProduct")
    public String getNewProductPage(SearchProductCondition sc, Model model) {

        try {
            // 상품이름 검색 페이지
            model.addAttribute("pageType", "new");

            // 전체 상품 카운트
            int totalCount = productListService.getAllProductCount();
            model.addAttribute("totalCount", totalCount);

            // 전체 상품 리스트
            List<ProductDto> allProductList = productListService.getAllProductList();
            model.addAttribute("productList", allProductList);

            // 페이징
            PageHandler pageHandler = new PageHandler(totalCount, sc);
            model.addAttribute("pageHandler", pageHandler);

        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/main";
        }
        return "/product/productList";
    }

    // 베스트 상품 리스트 페이지로 이동
    @GetMapping("/best")
    public String getBestProductPage(SearchProductCondition sc, Model model) {

        try {
            // 상품이름 검색 페이지
            model.addAttribute("pageType", "best");

            // 전체 상품 카운트
            int totalCount = productListService.getAllProductCount();
            model.addAttribute("totalCount", totalCount);

            // 전체 상품 리스트
            List<ProductDto> allProductList = productListService.getAllProductList();
            model.addAttribute("productList", allProductList);

            // 페이징
            PageHandler pageHandler = new PageHandler(totalCount, sc);
            model.addAttribute("pageHandler", pageHandler);
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/main";
        }
        return "/product/productList";
    }

}
