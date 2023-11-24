package com.pofol.main.order;

import java.util.Objects;

public class PaymentDataDto {
    private TotalProductsDto totalProducts; //주문한 상품 정보
    private PayDiscountDto payDiscount; // 결제시 할인 금액 정보

    PaymentDataDto(){}

    public PaymentDataDto(TotalProductsDto totalProducts, PayDiscountDto payDiscount) {
        this.totalProducts = totalProducts;
        this.payDiscount = payDiscount;
    }

    public TotalProductsDto getTotalProducts() {
        return totalProducts;
    }

    public void setTotalProducts(TotalProductsDto totalProducts) {
        this.totalProducts = totalProducts;
    }

    public PayDiscountDto getPayDiscount() {
        return payDiscount;
    }

    public void setPayDiscount(PayDiscountDto payDiscount) {
        this.payDiscount = payDiscount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PaymentDataDto that = (PaymentDataDto) o;
        return Objects.equals(totalProducts, that.totalProducts) && Objects.equals(payDiscount, that.payDiscount);
    }

    @Override
    public int hashCode() {
        return Objects.hash(totalProducts, payDiscount);
    }

    @Override
    public String toString() {
        return "PaymentDataDto{" +
                "totalProducts=" + totalProducts +
                ", payDiscount=" + payDiscount +
                '}';
    }
}
