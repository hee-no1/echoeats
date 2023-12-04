package com.pofol.main.orders.payment.domain;

import lombok.Getter;

import java.util.Objects;

@Getter
public class PaymentDiscountDto {

    private Long ord_id; //주문번호
    private Integer coupon_disc;  //쿠폰할인금액
    private Integer reserves_used; //적립금사용금액

    //ajax 용도
    private Integer tot_prod_price; //총 주문금액
    private Integer tot_pay_price; //총 실 결제 금액
    private Integer dlvy_fee; //배송비

    public PaymentDiscountDto(){}

    public void setOrd_id(Long ord_id) {
        this.ord_id = ord_id;
    }

    public void setCoupon_disc(Integer coupon_disc) {
        this.coupon_disc = coupon_disc;
    }

    public void setReserves_used(Integer reserves_used) {
        this.reserves_used = reserves_used;
    }

    public void setTot_prod_price(Integer tot_prod_price) {
        this.tot_prod_price = tot_prod_price;
    }

    public void setTot_pay_price(Integer tot_pay_price) {
        this.tot_pay_price = tot_pay_price;
    }

    public void setDlvy_fee(Integer dlvy_fee) {
        this.dlvy_fee = dlvy_fee;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PaymentDiscountDto that = (PaymentDiscountDto) o;
        return Objects.equals(ord_id, that.ord_id) && Objects.equals(coupon_disc, that.coupon_disc) && Objects.equals(reserves_used, that.reserves_used) && Objects.equals(tot_prod_price, that.tot_prod_price) && Objects.equals(tot_pay_price, that.tot_pay_price) && Objects.equals(dlvy_fee, that.dlvy_fee);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ord_id, coupon_disc, reserves_used, tot_prod_price, tot_pay_price, dlvy_fee);
    }

    @Override
    public String toString() {
        return "PaymentDiscountDto{" +
                "ord_id=" + ord_id +
                ", coupon_disc=" + coupon_disc +
                ", reserves_used=" + reserves_used +
                ", tot_prod_price=" + tot_prod_price +
                ", tot_pay_price=" + tot_pay_price +
                ", dlvy_fee=" + dlvy_fee +
                '}';
    }
}
