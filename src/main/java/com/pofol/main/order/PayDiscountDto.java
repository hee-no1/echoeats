package com.pofol.main.order;

import java.util.Objects;

public class PayDiscountDto {
    private Long pay_id; //결제 Id;
    private Integer prod_disc; //상품 할인금액
    private Integer coupon_disc; //쿠폰 할인금액
    private Integer card_disc; //카드 즉시 할인금액
    private Integer reserves_used; //적립금 사용 금액
    private Integer kurly_cash; //컬리캐시 사용 금액

    public PayDiscountDto(){}


    public PayDiscountDto(Integer prod_disc, Integer coupon_disc, Integer card_disc, Integer reserves_used, Integer kurly_cash) {
        this.pay_id = 1111L;
        this.prod_disc = prod_disc;
        this.coupon_disc = coupon_disc;
        this.card_disc = card_disc;
        this.reserves_used = reserves_used;
        this.kurly_cash = kurly_cash;
    }

    public Long getPay_id() {
        return pay_id;
    }

    public void setPay_id(Long pay_id) {
        this.pay_id = pay_id;
    }

    public Integer getProd_disc() {
        return prod_disc;
    }

    public void setProd_disc(Integer prod_disc) {
        this.prod_disc = prod_disc;
    }

    public Integer getCoupon_disc() {
        return coupon_disc;
    }

    public void setCoupon_disc(Integer coupon_disc) {
        this.coupon_disc = coupon_disc;
    }

    public Integer getCard_disc() {
        return card_disc;
    }

    public void setCard_disc(Integer card_disc) {
        this.card_disc = card_disc;
    }

    public Integer getReserves_used() {
        return reserves_used;
    }

    public void setReserves_used(Integer reserves_used) {
        this.reserves_used = reserves_used;
    }

    public Integer getKurly_cash() {
        return kurly_cash;
    }

    public void setKurly_cash(Integer kurly_cash) {
        this.kurly_cash = kurly_cash;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PayDiscountDto that = (PayDiscountDto) o;
        return Objects.equals(pay_id, that.pay_id) && Objects.equals(prod_disc, that.prod_disc) && Objects.equals(coupon_disc, that.coupon_disc) && Objects.equals(card_disc, that.card_disc) && Objects.equals(reserves_used, that.reserves_used) && Objects.equals(kurly_cash, that.kurly_cash);
    }

    @Override
    public int hashCode() {
        return Objects.hash(pay_id, prod_disc, coupon_disc, card_disc, reserves_used, kurly_cash);
    }

    @Override
    public String toString() {
        return "PayDiscountDto{" +
                "payId=" + pay_id +
                ", productDiscount=" + prod_disc +
                ", couponDiscount=" + coupon_disc +
                ", cardDiscount=" + card_disc +
                ", reservesUsed=" + reserves_used +
                ", kurlyCash=" + kurly_cash +
                '}';
    }
}
