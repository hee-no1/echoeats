package com.pofol.main.orders.payment.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Objects;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentDiscountDto {

    private Long ord_id; //주문번호
    private Integer prod_disc; //상품 할인 금액
    private Integer coupon_disc;  //쿠폰할인금액
    private Long coupon_id; //쿠폰id
    private Integer card_disc; //카드 즉시 할인 금액
    private Integer point_used; //적립금사용금액

    //ajax 용도
    private Integer tot_prod_price; //총 주문금액
    private Integer tot_pay_price; //총 실 결제 금액
    private Integer dlvy_fee; //배송비

    //insert 용도
    public PaymentDiscountDto(Long ord_id, Integer prod_disc, Integer coupon_disc, Long coupon_id, Integer point_used) {
        this.ord_id = ord_id;
        this.prod_disc = prod_disc;
        this.coupon_disc = coupon_disc;
        this.coupon_id = coupon_id;
        this.point_used = point_used;
    }

}
