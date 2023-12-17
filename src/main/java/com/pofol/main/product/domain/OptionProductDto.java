package com.pofol.main.product.domain;

import lombok.*;

import java.util.Date;
import java.util.Objects;

@Data
@NoArgsConstructor
public class OptionProductDto {

  private String opt_prod_id; // 옵션 상품 id
  private Long prod_id; // 상품 id
  private String opt_prod_name; // 옵션 상품 이름
  private Integer opt_price; // 옵션 상품 가격
  private Integer opt_disc_price; // 옵션 상품 할인된 가격
  private Integer opt_prod_qty; // 옵션 상품 수량
  private String opt_prod_sts; // 옵션 상품 판매 상태
  private Date rg_date;
  private String rg_num;
  private Date md_date;
  private String md_num;

  public OptionProductDto(String opt_prod_id, Long prod_id, String opt_prod_name, Integer opt_price, Integer opt_disc_price, Integer opt_prod_qty, String opt_prod_sts, String rg_num) {
    this.opt_prod_id = opt_prod_id;
    this.prod_id = prod_id;
    this.opt_prod_name = opt_prod_name;
    this.opt_price = opt_price;
    this.opt_disc_price = opt_disc_price;
    this.opt_prod_qty = opt_prod_qty;
    this.opt_prod_sts = opt_prod_sts;
    this.rg_num = rg_num;
    this.md_num = rg_num;
  }
}
