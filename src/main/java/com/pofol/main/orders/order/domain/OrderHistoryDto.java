package com.pofol.main.orders.order.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderHistoryDto {

    private Long ord_hist_id;
    private Long ord_id;
    private String code_name;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ord_date;
    private String tot_prod_name;
    private Integer tot_prod_price;
    private Integer tot_pay_price;
    private Integer tot_ord_qty;
    private String pay_way;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date rg_date;
    private String rg_num;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date md_date;
    private String md_num;

    //insert 용도
    public OrderHistoryDto(Long ord_id, String code_name, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_ord_qty, String pay_way, String rg_num, String md_num) {
        this.ord_id = ord_id;
        this.code_name = code_name;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_ord_qty = tot_ord_qty;
        this.pay_way = pay_way;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }
}
