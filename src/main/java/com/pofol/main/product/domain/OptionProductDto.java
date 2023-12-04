package com.pofol.main.product.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Objects;

@Getter
@ToString
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

  public void setOpt_prod_id(String opt_prod_id) {
    this.opt_prod_id = opt_prod_id;
  }

  public void setProd_id(Long prod_id) {
    this.prod_id = prod_id;
  }

  public void setOpt_prod_name(String opt_prod_name) {
    this.opt_prod_name = opt_prod_name;
  }

  public void setOpt_price(Integer opt_price) {
    this.opt_price = opt_price;
  }

  public void setOpt_disc_price(Integer opt_disc_price) {
    this.opt_disc_price = opt_disc_price;
  }

  public void setOpt_prod_qty(Integer opt_prod_qty) {
    this.opt_prod_qty = opt_prod_qty;
  }

  public void setOpt_prod_sts(String opt_prod_sts) {
    this.opt_prod_sts = opt_prod_sts;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    OptionProductDto that = (OptionProductDto) o;
    return Objects.equals(opt_prod_id, that.opt_prod_id) && Objects.equals(prod_id, that.prod_id) && Objects.equals(opt_prod_name, that.opt_prod_name) && Objects.equals(opt_price, that.opt_price) && Objects.equals(opt_disc_price, that.opt_disc_price) && Objects.equals(opt_prod_qty, that.opt_prod_qty) && Objects.equals(opt_prod_sts, that.opt_prod_sts);
  }

  @Override
  public int hashCode() {
    return Objects.hash(opt_prod_id, prod_id, opt_prod_name, opt_price, opt_disc_price, opt_prod_qty, opt_prod_sts);
  }
}
