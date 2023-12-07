package com.pofol.main.orders.order.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetailDto {

    private Long ord_det_id; //주문 상세 id
    private Long ord_id; //주문번호
    private String mem_id; //화원id
    private Long prod_id; // 상품id
    private String opt_prod_id; //option 상품 id
    private String code_name; //주문상태
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ord_date; //주문일시
    private String prod_name; //상품명
    private Integer prod_qty; //상품 수량
    private Integer prod_tot_price; //상품별 총 금액
    private String pack_type; //포장타입
    private String dlvy_attr; //배달속성 = 샛별배송
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ex_rfund_date; //교환,환불 일시
    private String rg_num;
    private String md_num;


    //insert 용도
    public OrderDetailDto(Long ord_id, String mem_id, Long prod_id, String opt_prod_id, String code_name, String prod_name, Integer prod_qty, Integer prod_tot_price, String pack_type, String rg_num, String md_num) {
        this.ord_id = ord_id;
        this.mem_id = mem_id;
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
        this.code_name = code_name;
        this.prod_name = prod_name;
        this.prod_qty = prod_qty;
        this.prod_tot_price = prod_tot_price;
        this.pack_type = pack_type;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }

    //updateStatus용도
    public OrderDetailDto(Long ord_det_id, String code_name, String md_num) {
        this.ord_det_id = ord_det_id;
        this.code_name = code_name;
        this.md_num = md_num;
    }

    //updateStatusList용도

}
