package com.pofol.main.product.domain;

import java.util.Objects;

public class ProdDto {

    Integer pro_id;
    String pro_name;
    String pro_desc;
    Integer pro_pri;
    String seller;
    String pack_type;
    String sales_unit;
    String weight;
    String allergy;
    String exp_date;
    String as_guide;
    String pro_img;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProdDto prodDto = (ProdDto) o;
        return Objects.equals(pro_id, prodDto.pro_id) && Objects.equals(pro_name, prodDto.pro_name) && Objects.equals(pro_desc, prodDto.pro_desc) && Objects.equals(pro_pri, prodDto.pro_pri) && Objects.equals(seller, prodDto.seller) && Objects.equals(pack_type, prodDto.pack_type) && Objects.equals(sales_unit, prodDto.sales_unit) && Objects.equals(weight, prodDto.weight) && Objects.equals(allergy, prodDto.allergy) && Objects.equals(exp_date, prodDto.exp_date) && Objects.equals(as_guide, prodDto.as_guide) && Objects.equals(pro_img, prodDto.pro_img);
    }

    @Override
    public int hashCode() {
        return Objects.hash(pro_id, pro_name, pro_desc, pro_pri, seller, pack_type, sales_unit, weight, allergy, exp_date, as_guide, pro_img);
    }

    public ProdDto(){}

    public ProdDto(Integer pro_id, String pro_name, String pro_desc, Integer pro_pri, String seller, String pack_type, String sales_unit, String weight, String allergy, String exp_date, String as_guide, String pro_img) {
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
    public String toString() {
        return "ProdDto{" +
                "pro_id=" + pro_id +
                ", pro_name='" + pro_name + '\'' +
                ", pro_desc='" + pro_desc + '\'' +
                ", pro_pri=" + pro_pri +
                ", seller='" + seller + '\'' +
                ", pack_type='" + pack_type + '\'' +
                ", sales_unit='" + sales_unit + '\'' +
                ", weight='" + weight + '\'' +
                ", allergy='" + allergy + '\'' +
                ", exp_date='" + exp_date + '\'' +
                ", as_guide='" + as_guide + '\'' +
                ", pro_img='" + pro_img + '\'' +
                '}';
    }

}
