package com.pofol.main.product.list.domain;

import java.time.LocalDate;
import java.util.Objects;

public class ProductDto {

  private Long prod_id; // 상품 ID
  private Long evt_gp_id; // 이벤트그룹 ID
  private String prod_img_id; // 상품 이미지 ID (일단 url을 가데이터로 넣고 개발할 것) (원래 타입은 Long)
  private String cat_code; // 카테고리 코드
  private String prod_name; // 상품명
  private Integer prod_price; // 상품 가격
  private Integer rate; // 할인율
  private String sale_sts; // 판매 상태
  private Integer prod_qyt; // 재고 수량
  private String is_option; // 옵션 유무
  private String disp_sts; // 전시 상태 (Y or N)
  private Integer rev_num; // 리뷰수
  private LocalDate prod_rg_date; // 상품 등록일
  private LocalDate prod_mod_date; // 상품 수정일
  private LocalDate sel_str_date; // 판매 시작일
  private LocalDate sel_end_date; // 판매 종료일

  private String origin; // 원산지
  private String weight; // 중량/용량
  private String brand; // 브랜드
  private String short_desc; // 짧은 상세 설명
  private String long_desc; // 긴 상세 설명
  private String seller; // 판매자 (관리자)
  private String exp_date; // 유통기한
  private String as_guide; // 안내사항
  private String sales_unit; // 판매단위
  private String pack_type; // 포장타입

  ProductDto() {}


  public Long getProd_id() {
    return prod_id;
  }

  public void setProd_id(Long prod_id) {
    this.prod_id = prod_id;
  }

  public Long getEvt_gp_id() {
    return evt_gp_id;
  }

  public void setEvt_gp_id(Long evt_gp_id) {
    this.evt_gp_id = evt_gp_id;
  }

  public String getProd_img_id() {
    return prod_img_id;
  }

  public void setProd_img_id(String prod_img_id) {
    this.prod_img_id = prod_img_id;
  }

  public String getCat_code() {
    return cat_code;
  }

  public void setCat_code(String cat_code) {
    this.cat_code = cat_code;
  }

  public String getProd_name() {
    return prod_name;
  }

  public void setProd_name(String prod_name) {
    this.prod_name = prod_name;
  }

  public Integer getProd_price() {
    return prod_price;
  }

  public void setProd_price(Integer prod_price) {
    this.prod_price = prod_price;
  }

  public Integer getRate() {
    return rate;
  }

  public void setRate(Integer rate) {
    this.rate = rate;
  }

  public String getSale_sts() {
    return sale_sts;
  }

  public void setSale_sts(String sale_sts) {
    this.sale_sts = sale_sts;
  }

  public Integer getProd_qyt() {
    return prod_qyt;
  }

  public void setProd_qyt(Integer prod_qyt) {
    this.prod_qyt = prod_qyt;
  }

  public String getIs_option() {
    return is_option;
  }

  public void setIs_option(String is_option) {
    this.is_option = is_option;
  }

  public String getDisp_sts() {
    return disp_sts;
  }

  public void setDisp_sts(String disp_sts) {
    this.disp_sts = disp_sts;
  }

  public Integer getRev_num() {
    return rev_num;
  }

  public void setRev_num(Integer rev_num) {
    this.rev_num = rev_num;
  }

  public LocalDate getProd_rg_date() {
    return prod_rg_date;
  }

  public void setProd_rg_date(LocalDate prod_rg_date) {
    this.prod_rg_date = prod_rg_date;
  }

  public LocalDate getProd_mod_date() {
    return prod_mod_date;
  }

  public void setProd_mod_date(LocalDate prod_mod_date) {
    this.prod_mod_date = prod_mod_date;
  }

  public LocalDate getSel_str_date() {
    return sel_str_date;
  }

  public void setSel_str_date(LocalDate sel_str_date) {
    this.sel_str_date = sel_str_date;
  }

  public LocalDate getSel_end_date() {
    return sel_end_date;
  }

  public void setSel_end_date(LocalDate sel_end_date) {
    this.sel_end_date = sel_end_date;
  }

  public String getOrigin() {
    return origin;
  }

  public void setOrigin(String origin) {
    this.origin = origin;
  }

  public String getWeight() {
    return weight;
  }

  public void setWeight(String weight) {
    this.weight = weight;
  }

  public String getBrand() {
    return brand;
  }

  public void setBrand(String brand) {
    this.brand = brand;
  }

  public String getShort_desc() {
    return short_desc;
  }

  public void setShort_desc(String short_desc) {
    this.short_desc = short_desc;
  }

  public String getLong_desc() {
    return long_desc;
  }

  public void setLong_desc(String long_desc) {
    this.long_desc = long_desc;
  }

  public String getSeller() {
    return seller;
  }

  public void setSeller(String seller) {
    this.seller = seller;
  }

  public String getExp_date() {
    return exp_date;
  }

  public void setExp_date(String exp_date) {
    this.exp_date = exp_date;
  }

  public String getAs_guide() {
    return as_guide;
  }

  public void setAs_guide(String as_guide) {
    this.as_guide = as_guide;
  }

  public String getSales_unit() {
    return sales_unit;
  }

  public void setSales_unit(String sales_unit) {
    this.sales_unit = sales_unit;
  }

  public String getPack_type() {
    return pack_type;
  }

  public void setPack_type(String pack_type) {
    this.pack_type = pack_type;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    ProductDto that = (ProductDto) o;
    return Objects.equals(prod_id, that.prod_id) && Objects.equals(evt_gp_id, that.evt_gp_id) && Objects.equals(prod_img_id, that.prod_img_id) && Objects.equals(cat_code, that.cat_code) && Objects.equals(prod_name, that.prod_name) && Objects.equals(prod_price, that.prod_price) && Objects.equals(rate, that.rate) && Objects.equals(sale_sts, that.sale_sts) && Objects.equals(prod_qyt, that.prod_qyt) && Objects.equals(is_option, that.is_option) && Objects.equals(disp_sts, that.disp_sts) && Objects.equals(rev_num, that.rev_num) && Objects.equals(prod_rg_date, that.prod_rg_date) && Objects.equals(prod_mod_date, that.prod_mod_date) && Objects.equals(sel_str_date, that.sel_str_date) && Objects.equals(sel_end_date, that.sel_end_date) && Objects.equals(origin, that.origin) && Objects.equals(weight, that.weight) && Objects.equals(brand, that.brand) && Objects.equals(short_desc, that.short_desc) && Objects.equals(long_desc, that.long_desc) && Objects.equals(seller, that.seller) && Objects.equals(exp_date, that.exp_date) && Objects.equals(as_guide, that.as_guide) && Objects.equals(sales_unit, that.sales_unit) && Objects.equals(pack_type, that.pack_type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(prod_id, evt_gp_id, prod_img_id, cat_code, prod_name, prod_price, rate, sale_sts, prod_qyt, is_option, disp_sts, rev_num, prod_rg_date, prod_mod_date, sel_str_date, sel_end_date, origin, weight, brand, short_desc, long_desc, seller, exp_date, as_guide, sales_unit, pack_type);
  }

  @Override
  public String toString() {
    return "ProductDto{" +
        "prod_id=" + prod_id +
        ", evt_gp_id=" + evt_gp_id +
        ", prod_img_id='" + prod_img_id + '\'' +
        ", cat_code='" + cat_code + '\'' +
        ", prod_name='" + prod_name + '\'' +
        ", prod_price=" + prod_price +
        ", rate=" + rate +
        ", sale_sts='" + sale_sts + '\'' +
        ", prod_qyt=" + prod_qyt +
        ", is_option='" + is_option + '\'' +
        ", disp_sts='" + disp_sts + '\'' +
        ", rev_num=" + rev_num +
        ", prod_rg_date=" + prod_rg_date +
        ", prod_mod_date=" + prod_mod_date +
        ", sel_str_date=" + sel_str_date +
        ", sel_end_date=" + sel_end_date +
        ", origin='" + origin + '\'' +
        ", weight='" + weight + '\'' +
        ", brand='" + brand + '\'' +
        ", short_desc='" + short_desc + '\'' +
        ", long_desc='" + long_desc + '\'' +
        ", seller='" + seller + '\'' +
        ", exp_date='" + exp_date + '\'' +
        ", as_guide='" + as_guide + '\'' +
        ", sales_unit='" + sales_unit + '\'' +
        ", pack_type='" + pack_type + '\'' +
        '}';
  }
}