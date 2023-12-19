package com.pofol.main.product.cart;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.service.AddressService;
import com.pofol.main.member.service.GradeService;
import com.pofol.main.product.category.CategoryDto;
import com.pofol.main.product.category.CategoryList;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/cart")
@RequiredArgsConstructor
public class CartController {

    private final GradeService gradeService;
    private final CartService cartService;
    private final CategoryList categoryList;
    private final AddressService addressService;

    // 상품 수량에 따라 상품 가격 계산 (상품 상세 페이지)
    @ResponseBody
    @PostMapping("/ProductCalculation")
    public ResponseEntity<List<CartDto>> productCalculation(@RequestBody List<CartDto> cartDtoList) {

        try {
            List<CartDto> productCount = cartService.goCartProductCount(cartDtoList);
            return ResponseEntity.ok(productCount);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(cartDtoList);
        }
    }

    // 장바구니 페이지로 가기
    @GetMapping
    public String goCartPage(Model model) {

        // 회원 아이디 가져오기
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String memberID = authentication.getName();

        try {
            // 대 카테고리 리스트 정렬 (header의 카테고리 정렬)
            List<CategoryDto> bigCategoryProductList = categoryList.bigCateList();
            model.addAttribute("categoryList", bigCategoryProductList);

            // 장바구니 리스트 정렬
            List<CartDto> cartProductList = cartService.getCartProductList(memberID);
            model.addAttribute("cartProductList", cartProductList);

            // 회원 등급 + 배송지 가져오기
            if(!(authentication instanceof AnonymousAuthenticationToken)){
                GradeDto memberGrade = gradeService.show_grade(memberID);
                model.addAttribute("memberGrade", memberGrade);

                AddressDto defaultAddress = addressService.getDefaultAddress(memberID);
                model.addAttribute("address", defaultAddress.getAddr());
                model.addAttribute("detailAddress", defaultAddress.getDtl_addr());
            }

        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/main";
        }

        return "/product/cart";
    }

    // 장바구니에 상품 저장
    @ResponseBody
    @PostMapping("/saveProduct")
    public ResponseEntity<String> saveProductCart(@RequestBody List<CartDto> cartDtoList) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if(authentication instanceof AnonymousAuthenticationToken){
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Not authorized");
        }

        for (CartDto cartDto : cartDtoList) {
            if (cartDto.getQty() != 0) {
                try {
                    cartService.saveCartProduct(cartDto);
                } catch (Exception e) {
                    e.printStackTrace();
                    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
                }
            }
        }
        return ResponseEntity.ok().build();
    }

    // 장바구니 상품 수량 변경에 따른 가격 변동
    @ResponseBody
    @PostMapping("/CartCalculation")
    public ResponseEntity<CartDto> getCartProductCount(@RequestBody CartDto cartDto) {
        try {
            CartDto cartProductPrice = cartService.getCartProductPrice(cartDto);
            return ResponseEntity.ok(cartProductPrice);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(cartDto);
        }
    }

    // 장바구니에 상품 삭제
    @ResponseBody
    @PostMapping("/removeProduct")
    public ResponseEntity<String> removeCartProduct(@RequestBody CartDto cartDto) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if(authentication instanceof AnonymousAuthenticationToken){
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Not authorized");
        }

        try {
//            for (CartDto cartDto : cartDtoList) {
                cartService.removeCartProduct(cartDto);
//            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }

        return ResponseEntity.ok().build();
    }
}
