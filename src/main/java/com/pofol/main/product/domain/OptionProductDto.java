package com.pofol.main.product.domain;

import lombok.*;

import java.util.Objects;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OptionProductDto {

  private String opt_prod_id; // 옵션 상품 id
  private Long prod_id; // 상품 id
  private String opt_prod_name; // 옵션 상품 이름
  private Integer opt_price; // 옵션 상품 가격
  private Integer opt_disc_price; // 옵션 상품 할인된 가격
  private Integer opt_prod_qty; // 옵션 상품 수량
  private String opt_prod_sts; // 옵션 상품 판매 상태

}
