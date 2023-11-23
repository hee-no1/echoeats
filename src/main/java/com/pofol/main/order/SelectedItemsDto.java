package com.pofol.main.order;

import org.apache.ibatis.annotations.Select;

import java.util.Objects;

public class SelectedItemsDto {

    private ProductDto dealProductNo; //dealProductNo 객체
    private Integer quantity;

    public SelectedItemsDto(){}

    public SelectedItemsDto(ProductDto dealProductNo, Integer quantity) {
        this.dealProductNo = dealProductNo;
        this.quantity = quantity;
    }

    public ProductDto getDealProductNo() {
        return dealProductNo;
    }

    public void setDealProductNo(ProductDto dealProductNo) {
        this.dealProductNo = dealProductNo;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SelectedItemsDto that = (SelectedItemsDto) o;
        return Objects.equals(dealProductNo, that.dealProductNo) && Objects.equals(quantity, that.quantity);
    }

    @Override
    public int hashCode() {
        return Objects.hash(dealProductNo, quantity);
    }

    @Override
    public String toString() {
        return "SelectedItemsDto{" +
                "dealProductNo=" + dealProductNo +
                ", quantity=" + quantity +
                '}';
    }
}
