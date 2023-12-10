package com.pofol.main.orders.order.domain;

import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import com.pofol.main.orders.sample.memberSample.SampleMemberDto;
import com.pofol.main.orders.sample.productSample.SampleProductDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Objects;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderCheckout {

    /* 장바구니를 통해 넘어온 상품정보 */
    private List<SelectedItemsDto> selectedItems;

    /* 서버 -> 주문서 */
    private String tot_prod_name; //총 상품명
    private Integer tot_prod_price; //총 주문 금액
    private Integer origin_prod_price; //총 원래 상품 금액
    private Integer dlvy_fee; //배송비
    private SampleMemberDto sampleMemberDto; //회원 정보
    //배송정보 Dto
    //배송요청사항정보 Dto
    //쿠폰 Dto
    //적립금 Dto


    /* 주문서 -> 결제 */
    private Integer tot_pay_price; //실 결제 금액
    private String pay_way; //결제 방법
    private Integer prod_disc; //상품 할인 금액
    private Integer coupon_disc; //쿠폰 할인 금액
    private Integer point_used; //적립금 사용 금액


    public OrderCheckout(List<SelectedItemsDto> selectedItems) {
        this.selectedItems = selectedItems;
    }

}
