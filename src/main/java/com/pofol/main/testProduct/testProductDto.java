package com.pofol.main.testProduct;

import java.util.Objects;

public class testProductDto {

  private String name; // 상품이름
  private String desc; // 상품설명
  private Integer price; // 상품가격
  private String seller; // 판매자
  private String pack_type; // 포장타입
  private String sales_unit; // 판매단위
  private String weight; // 중량/용량
  private String allergy; // 알레르기 정보
  private String exp_date; // 유통기한
  private String origin; // 원산지
  private String as_guide; // 안내사항
  private String imgUrl; // 이미지url

  public testProductDto(String name, String desc, Integer price, String seller, String pack_type, String sales_unit, String weight, String allergy, String exp_date, String origin, String as_guide, String imgUrl) {
    this.name = name;
    this.desc = desc;
    this.price = price;
    this.seller = seller;
    this.pack_type = pack_type;
    this.sales_unit = sales_unit;
    this.weight = weight;
    this.allergy = allergy;
    this.exp_date = exp_date;
    this.origin = origin;
    this.as_guide = as_guide;
    this.imgUrl = imgUrl;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDesc() {
    return desc;
  }

  public void setDesc(String desc) {
    this.desc = desc;
  }

  public Integer getPrice() {
    return price;
  }

  public void setPrice(Integer price) {
    this.price = price;
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

  public String getImgUrl() {
    return imgUrl;
  }

  public void setImgUrl(String imgUrl) {
    this.imgUrl = imgUrl;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    testProductDto that = (testProductDto) o;
    return Objects.equals(name, that.name) && Objects.equals(desc, that.desc) && Objects.equals(price, that.price) && Objects.equals(seller, that.seller) && Objects.equals(pack_type, that.pack_type) && Objects.equals(sales_unit, that.sales_unit) && Objects.equals(weight, that.weight) && Objects.equals(allergy, that.allergy) && Objects.equals(exp_date, that.exp_date) && Objects.equals(origin, that.origin) && Objects.equals(as_guide, that.as_guide) && Objects.equals(imgUrl, that.imgUrl);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, desc, price, seller, pack_type, sales_unit, weight, allergy, exp_date, origin, as_guide, imgUrl);
  }
}
