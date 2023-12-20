package com.pofol.main.orders.payment.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentDto {
    private String pay_id; //결제 id (impxxxx, 포트원에서 제공)
    private Long ord_id; //주문번호
    private String mem_id; //회원id
    private String code_name; //결제상태
    private String tot_prod_name; //총 상품명
    private Integer tot_pay_price; //실 결제 금액
    private Integer reserves; //적립되는 금액
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pay_date; //결제 일시
    private String pay_way; //결제 방법
    private String rg_num;
    private String md_num;

    private String pg_tid; //pg사 거래번호
    private String success; //결제 성공 여부


    //결제 조회 특정 기간
    private String start_date;
    private String end_date;

    public PaymentDto(String pay_id, Long ord_id, String mem_id, String code_name, String tot_prod_name, Integer tot_pay_price, String pay_way, String rg_num, String md_num) {
        this.pay_id = pay_id;
        this.ord_id = ord_id;
        this.mem_id = mem_id;
        this.code_name = code_name;
        this.tot_prod_name = tot_prod_name;
        this.tot_pay_price = tot_pay_price;
        this.pay_way = pay_way;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }

    //주문 table update를 위한 용도
    public PaymentDto(Long ord_id, String code_name) {
        this.ord_id = ord_id;
        this.code_name = code_name;
    }

    //특정기간 결제 조회시 이용
    public PaymentDto(String mem_id, String start_date, String end_date) {
        this.mem_id = mem_id;
        this.start_date = start_date;
        this.end_date = end_date;
    }


    public void setMemberData(String mem_id){
        this.mem_id = mem_id;
        this.rg_num = mem_id;
        this.md_num = mem_id;
    }
}
