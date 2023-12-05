package com.pofol.main.orders.order.domain;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.Objects;

@Data //getter, setter, 기본생성자, equals, hashcode, toString까지
public class OrderDto {

    private Long ord_id; //주문번호
    private String mem_id; //회원ID
    private LocalDateTime ord_date;  //주문일시
    private String tot_prod_name; //총 상품명
    private Integer tot_prod_price; //총 주문금액
    private Integer tot_pay_price; //총 실결제 금액
    private Integer tot_prod_disc; //총 상품할인금액
    private Integer dlvy_fee; //배송비
    private Integer prod_qty; //총 상품 수량
    private String pay_way; //결제방법
    private Integer ord_int; //주문중
    private Integer ord_cmplt; //주문완료
    private Integer ord_fail; //주문실패
    private Integer prod_ing; //상품준비중
    private Integer dlvy_prep_ing; //배송준비중
    private Integer dlvy_ing; //배송중
    private Integer dlvy_complt; //배송완료
    private Integer ord_cxl; //주문취소
    private Integer ord_ex; //교환
    private Integer ord_rfnd; //환불
    private String rg_num;
    private String md_num;

}


