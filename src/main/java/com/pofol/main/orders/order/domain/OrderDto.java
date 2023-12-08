package com.pofol.main.orders.order.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.Date;

@Data //getter, setter, equals, hashcode, toString까지
@NoArgsConstructor
@AllArgsConstructor
public class OrderDto {

    private Long ord_id; //주문번호
    private String mem_id; //회원ID
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ord_date; //주문일시
    private String tot_prod_name; //총 상품명
    private Integer tot_prod_price; //총 주문금액
    private Integer tot_pay_price; //총 실결제 금액
    private Integer tot_prod_disc; //총 상품할인금액
    private Integer dlvy_fee; //배송비
    private String pay_way; //결제방법
    private Integer ord_ing; //주문중
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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date rg_date;
    private String md_num;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date md_date;


    public OrderDto(Long ord_id, String mem_id, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_prod_disc, Integer dlvy_fee, String pay_way, String rg_num) {
        this.ord_id = ord_id;
        this.mem_id = mem_id;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_prod_disc = tot_prod_disc;
        this.dlvy_fee = dlvy_fee;
        this.pay_way = pay_way;
        this.rg_num = rg_num;
    }
}


