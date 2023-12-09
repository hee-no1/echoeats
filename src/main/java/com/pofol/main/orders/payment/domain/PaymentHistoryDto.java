package com.pofol.main.orders.payment.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentHistoryDto {
    private Long pay_hist_id; //결제이력id
    private String pay_id; //결제id
    private Long ord_id; //주문번호
    private String mem_id; //회원id
    private String code_name; //결제상태
    private String pay_way; //결제방법
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pay_date; //결제일시
    private String tot_prod_name; //총 상품명
    private Integer tot_pay_price; //실 결제금액
    private String card_company;//카드사
    private String card_num; //카드번호
    private String pg_tid; //pg사
    private String rg_num;
    private String md_num;

    public PaymentHistoryDto(String pay_id, Long ord_id, String mem_id, String code_name, String pay_way, String tot_prod_name, Integer tot_pay_price, String pg_tid, String rg_num, String md_num) {
        this.pay_id = pay_id;
        this.ord_id = ord_id;
        this.mem_id = mem_id;
        this.code_name = code_name;
        this.pay_way = pay_way;
        this.tot_prod_name = tot_prod_name;
        this.tot_pay_price = tot_pay_price;
        this.pg_tid = pg_tid;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }
}
