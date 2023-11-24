package com.pofol.main.order;

import com.pofol.main.order.orderProductTest.ProductDto;

import java.util.Objects;

public class SelectedItemsDto {

    private ProductDto dealProductNo; //dealProductNo 객체
    private Integer qty;

    public SelectedItemsDto(){}

    public SelectedItemsDto(ProductDto dealProductNo, Integer qty) {
        this.dealProductNo = dealProductNo;
        this.qty = qty;
    }

    public ProductDto getDealProductNo() {
        return dealProductNo;
    }

    public void setDealProductNo(ProductDto dealProductNo) {
        this.dealProductNo = dealProductNo;
    }

    public Integer getQty() {
        return qty;
    }

    public void setQty(Integer qty) {
        this.qty = qty;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SelectedItemsDto that = (SelectedItemsDto) o;
        return Objects.equals(dealProductNo, that.dealProductNo) && Objects.equals(qty, that.qty);
    }

    @Override
    public int hashCode() {
        return Objects.hash(dealProductNo, qty);
    }

    @Override
    public String toString() {
        return "SelectedItemsDto{" +
                "dealProductNo=" + dealProductNo +
                ", quantity=" + qty +
                '}';
    }
}
