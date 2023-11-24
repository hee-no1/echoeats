package com.pofol.main.order;

import java.util.Objects;

public class PayDiscountDto {
    private Long payId; //결제 Id;
    private Integer productDiscount; //상품 할인금액
    private Integer couponDiscount; //쿠폰 할인금액
    private Integer cardDiscount; //카드 즉시 할인금액
    private Integer reservesUsed; //적립금 사용 금액
    private Integer kurlyCash; //컬리캐시 사용 금액

    public PayDiscountDto(){}


    public PayDiscountDto(Integer productDiscount, Integer couponDiscount, Integer cardDiscount, Integer reservesUsed, Integer kurlyCash) {
        this.payId = 1111L;
        this.productDiscount = productDiscount;
        this.couponDiscount = couponDiscount;
        this.cardDiscount = cardDiscount;
        this.reservesUsed = reservesUsed;
        this.kurlyCash = kurlyCash;
    }

    public Long getPayId() {
        return payId;
    }

    public void setPayId(Long payId) {
        this.payId = payId;
    }

    public Integer getProductDiscount() {
        return productDiscount;
    }

    public void setProductDiscount(Integer productDiscount) {
        this.productDiscount = productDiscount;
    }

    public Integer getCouponDiscount() {
        return couponDiscount;
    }

    public void setCouponDiscount(Integer couponDiscount) {
        this.couponDiscount = couponDiscount;
    }

    public Integer getCardDiscount() {
        return cardDiscount;
    }

    public void setCardDiscount(Integer cardDiscount) {
        this.cardDiscount = cardDiscount;
    }

    public Integer getReservesUsed() {
        return reservesUsed;
    }

    public void setReservesUsed(Integer reservesUsed) {
        this.reservesUsed = reservesUsed;
    }

    public Integer getKurlyCash() {
        return kurlyCash;
    }

    public void setKurlyCash(Integer kurlyCash) {
        this.kurlyCash = kurlyCash;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PayDiscountDto that = (PayDiscountDto) o;
        return Objects.equals(payId, that.payId) && Objects.equals(productDiscount, that.productDiscount) && Objects.equals(couponDiscount, that.couponDiscount) && Objects.equals(cardDiscount, that.cardDiscount) && Objects.equals(reservesUsed, that.reservesUsed) && Objects.equals(kurlyCash, that.kurlyCash);
    }

    @Override
    public int hashCode() {
        return Objects.hash(payId, productDiscount, couponDiscount, cardDiscount, reservesUsed, kurlyCash);
    }

    @Override
    public String toString() {
        return "PayDiscountDto{" +
                "payId=" + payId +
                ", productDiscount=" + productDiscount +
                ", couponDiscount=" + couponDiscount +
                ", cardDiscount=" + cardDiscount +
                ", reservesUsed=" + reservesUsed +
                ", kurlyCash=" + kurlyCash +
                '}';
    }
}
