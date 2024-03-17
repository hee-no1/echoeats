package com.pofol.main.orders.payment.domain;

import com.pofol.main.product.cart.SelectedItemsDto;
import lombok.*;

import java.util.List;

@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class PaymentInfo {
    //사전 검증 시 필요한 데이터
    private Integer tot_pay_price; //실 결제 금액
    private Integer prod_disc; //상품 할인 금액
    private Long coupon_id; //사용 쿠폰 id
    private Integer coupon_disc; //쿠폰 할인 금액
    private Integer point_used; //적립금 사용 금액
    private List<SelectedItemsDto> selectedItems; //상품 정보

    //주문 테이블 생성 시 추가로 필요한 데이터
    private String tot_prod_name; //총 주문 상품명
    private Integer tot_prod_price; //총 주문 금액
    private Integer origin_prod_price; //원래 상품 금액
    private Integer dlvy_fee; //배송비
    private String pay_way; //결제 수단

    //주문 테이블 생성 되면 ord_id 자동 생성
    private Long ord_id;
}
