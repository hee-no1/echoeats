package com.pofol.main.productTest.list.domain;

import java.util.Objects;

public class DisplayProductDto {

  private Integer prod_id; // 상품 ID
  private Integer evt_gp_id; // 이벤트그룹 ID
  private Integer mid_cat_id; // 중카테고리 ID
  private Integer sel_id; // 판매자 ID
  private Integer prod_img_id; // 상품 이미지 ID
  private String prod_name; // 상품명
  private Integer prod_price; // 상품 가격
  private String short_desc; // 짧은 상세 설명
  private String long_desc; // 긴 상세 설명
  private Integer prod_qyt; // 재고 수량
  private String disp_sts; // 전시 상태 (Y or N)
  private Integer rev_num; // 리뷰수
  private String spl_info; // 특가정보
  private String mid_cat_name; // 중카테고리 이름
  private String high_cat_name; // 대카테고리 이름

  private String seller; // 판매자
  private String pack_type; // 포장타입
  private String seles_unit; // 판매단위
  private String weight; // 중량/용량
  private String prod_allergy; // 알레르기
  private String exp_date; // 유통기한
  private String origin; // 원산지
  private String as_guide; // 안내사항

  public Integer getProd_id() {
    return prod_id;
  }

  public void setProd_id(Integer prod_id) {
    this.prod_id = prod_id;
  }

  public Integer getEvt_gp_id() {
    return evt_gp_id;
  }

  public void setEvt_gp_id(Integer evt_gp_id) {
    this.evt_gp_id = evt_gp_id;
  }

  public Integer getMid_cat_id() {
    return mid_cat_id;
  }

  public void setMid_cat_id(Integer mid_cat_id) {
    this.mid_cat_id = mid_cat_id;
  }

  public Integer getSel_id() {
    return sel_id;
  }

  public void setSel_id(Integer sel_id) {
    this.sel_id = sel_id;
  }

  public Integer getProd_img_id() {
    return prod_img_id;
  }

  public void setProd_img_id(Integer prod_img_id) {
    this.prod_img_id = prod_img_id;
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

  public Integer getProd_qyt() {
    return prod_qyt;
  }

  public void setProd_qyt(Integer prod_qyt) {
    this.prod_qyt = prod_qyt;
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

  public String getSpl_info() {
    return spl_info;
  }

  public void setSpl_info(String spl_info) {
    this.spl_info = spl_info;
  }

  public String getMid_cat_name() {
    return mid_cat_name;
  }

  public void setMid_cat_name(String mid_cat_name) {
    this.mid_cat_name = mid_cat_name;
  }

  public String getHigh_cat_name() {
    return high_cat_name;
  }

  public void setHigh_cat_name(String high_cat_name) {
    this.high_cat_name = high_cat_name;
  }

  public String getSeller() {
    return seller;
  }

  public void setSeller(String seller) {
    this.seller = seller;
  }

  public String getPack_type() {
    return pack_type;
  }

  public void setPack_type(String pack_type) {
    this.pack_type = pack_type;
  }

  public String getSeles_unit() {
    return seles_unit;
  }

  public void setSeles_unit(String seles_unit) {
    this.seles_unit = seles_unit;
  }

  public String getWeight() {
    return weight;
  }

  public void setWeight(String weight) {
    this.weight = weight;
  }

  public String getProd_allergy() {
    return prod_allergy;
  }

  public void setProd_allergy(String prod_allergy) {
    this.prod_allergy = prod_allergy;
  }

  public String getExp_date() {
    return exp_date;
  }

  public void setExp_date(String exp_date) {
    this.exp_date = exp_date;
  }

  public String getOrigin() {
    return origin;
  }

  public void setOrigin(String origin) {
    this.origin = origin;
  }

  public String getAs_guide() {
    return as_guide;
  }

  public void setAs_guide(String as_guide) {
    this.as_guide = as_guide;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    DisplayProductDto that = (DisplayProductDto) o;
    return Objects.equals(prod_id, that.prod_id) && Objects.equals(evt_gp_id, that.evt_gp_id) && Objects.equals(mid_cat_id, that.mid_cat_id) && Objects.equals(sel_id, that.sel_id) && Objects.equals(prod_img_id, that.prod_img_id) && Objects.equals(prod_name, that.prod_name) && Objects.equals(prod_price, that.prod_price) && Objects.equals(short_desc, that.short_desc) && Objects.equals(long_desc, that.long_desc) && Objects.equals(prod_qyt, that.prod_qyt) && Objects.equals(disp_sts, that.disp_sts) && Objects.equals(rev_num, that.rev_num) && Objects.equals(spl_info, that.spl_info) && Objects.equals(mid_cat_name, that.mid_cat_name) && Objects.equals(high_cat_name, that.high_cat_name) && Objects.equals(seller, that.seller) && Objects.equals(pack_type, that.pack_type) && Objects.equals(seles_unit, that.seles_unit) && Objects.equals(weight, that.weight) && Objects.equals(prod_allergy, that.prod_allergy) && Objects.equals(exp_date, that.exp_date) && Objects.equals(origin, that.origin) && Objects.equals(as_guide, that.as_guide);
  }

  @Override
  public int hashCode() {
    return Objects.hash(prod_id, evt_gp_id, mid_cat_id, sel_id, prod_img_id, prod_name, prod_price, short_desc, long_desc, prod_qyt, disp_sts, rev_num, spl_info, mid_cat_name, high_cat_name, seller, pack_type, seles_unit, weight, prod_allergy, exp_date, origin, as_guide);
  }

  @Override
  public String toString() {
    return "DisplayProductDto{" +
        "prod_id=" + prod_id +
        ", evt_gp_id=" + evt_gp_id +
        ", mid_cat_id=" + mid_cat_id +
        ", sel_id=" + sel_id +
        ", prod_img_id=" + prod_img_id +
        ", prod_name='" + prod_name + '\'' +
        ", prod_price=" + prod_price +
        ", short_desc='" + short_desc + '\'' +
        ", long_desc='" + long_desc + '\'' +
        ", prod_qyt=" + prod_qyt +
        ", disp_sts='" + disp_sts + '\'' +
        ", rev_num=" + rev_num +
        ", spl_info='" + spl_info + '\'' +
        ", mid_cat_name='" + mid_cat_name + '\'' +
        ", high_cat_name='" + high_cat_name + '\'' +
        ", seller='" + seller + '\'' +
        ", pack_type='" + pack_type + '\'' +
        ", seles_unit='" + seles_unit + '\'' +
        ", weight='" + weight + '\'' +
        ", prod_allergy='" + prod_allergy + '\'' +
        ", exp_date='" + exp_date + '\'' +
        ", origin='" + origin + '\'' +
        ", as_guide='" + as_guide + '\'' +
        '}';
  }
}
