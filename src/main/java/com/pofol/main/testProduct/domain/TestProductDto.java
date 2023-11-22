package com.pofol.main.testProduct.domain;

import java.util.Objects;

public class TestProductDto {

  private Integer pro_id; // 상품진열번호
  private String pro_name; // 상품이름
  private String pro_desc; // 상품설명
  private Integer pro_pri; // 상품가격
  private String seller; // 판매자
  private String pack_type; // 포장타입
  private String sales_unit; // 판매단위
  private String weight; // 중량/용량
  private String allergy; // 알레르기 정보
  private String exp_date; // 유통기한
  private String origin; // 원산지
  private String as_guide; // 안내사항
  private String pro_img; // 이미지url

  public TestProductDto() {}


  public TestProductDto(Integer pro_id, String pro_name, String pro_desc, Integer pro_pri, String seller, String pack_type, String sales_unit, String weight, String allergy, String exp_date, String origin, String as_guide, String pro_img) {
    this.pro_id = pro_id;
    this.pro_name = pro_name;
    this.pro_desc = pro_desc;
    this.pro_pri = pro_pri;
    this.seller = seller;
    this.pack_type = pack_type;
    this.sales_unit = sales_unit;
    this.weight = weight;
    this.allergy = allergy;
    this.exp_date = exp_date;
    this.origin = origin;
    this.as_guide = as_guide;
    this.pro_img = pro_img;
  }

  public Integer getPro_id() {
    return pro_id;
  }

  public void setPro_id(Integer pro_id) {
    this.pro_id = pro_id;
  }

  public String getPro_name() {
    return pro_name;
  }

  public void setPro_name(String pro_name) {
    this.pro_name = pro_name;
  }

  public String getPro_desc() {
    return pro_desc;
  }

  public void setPro_desc(String pro_desc) {
    this.pro_desc = pro_desc;
  }

  public Integer getPro_pri() {
    return pro_pri;
  }

  public void setPro_pri(Integer pro_pri) {
    this.pro_pri = pro_pri;
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

  public String getSales_unit() {
    return sales_unit;
  }

  public void setSales_unit(String sales_unit) {
    this.sales_unit = sales_unit;
  }

  public String getWeight() {
    return weight;
  }

  public void setWeight(String weight) {
    this.weight = weight;
  }

  public String getAllergy() {
    return allergy;
  }

  public void setAllergy(String allergy) {
    this.allergy = allergy;
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

  public String getPro_img() {
    return pro_img;
  }

  public void setPro_img(String pro_img) {
    this.pro_img = pro_img;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    TestProductDto that = (TestProductDto) o;
    return Objects.equals(pro_id, that.pro_id) && Objects.equals(pro_name, that.pro_name) && Objects.equals(pro_desc, that.pro_desc) && Objects.equals(pro_pri, that.pro_pri) && Objects.equals(seller, that.seller) && Objects.equals(pack_type, that.pack_type) && Objects.equals(sales_unit, that.sales_unit) && Objects.equals(weight, that.weight) && Objects.equals(allergy, that.allergy) && Objects.equals(exp_date, that.exp_date) && Objects.equals(origin, that.origin) && Objects.equals(as_guide, that.as_guide) && Objects.equals(pro_img, that.pro_img);
  }

  @Override
  public int hashCode() {
    return Objects.hash(pro_id, pro_name, pro_desc, pro_pri, seller, pack_type, sales_unit, weight, allergy, exp_date, origin, as_guide, pro_img);
  }
}
