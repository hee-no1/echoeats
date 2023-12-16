package com.pofol.main.product.cart;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartDto {

    private Long cart_id; // 장바구니 아이디
    private String mem_id; // 회원 아이디
    private Long prod_id; // 상품 아이디
    private String prod_name; // 상품 이름
    private Integer prod_price; // 상품 가격
    private Integer disc_price; // 상품 할인 가격
    private String opt_prod_id; // 옵션 상품 아이디
    private String opt_prod_name; // 옵션 상품 이름
    private Integer opt_price; // 옵션 상품 가격
    private Integer opt_disc_price; // 옵션 상품 할인 가격

    private Integer qty; // 수량
    private Integer total_price; // (상품 or 옵션상품) x 수량
    private Integer total_disc_price; // (상품 or 옵션상품) x 수량 -> 할인가

    private String prod_img_id; // 나중에 id(번호) 로 변경할 것

    public CartDto(Long prod_id, String opt_prod_id, Integer qty) {
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
        this.qty = qty;
    }

    public CartDto(Long prod_id, Integer qty) {
        this.prod_id = prod_id;
        this.qty = qty;
    }
    
}
