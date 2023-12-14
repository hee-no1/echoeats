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
    private String mem_id;
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
    public OrderHistoryDto(Long ord_id, String mem_id, String code_name, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_ord_qty, String pay_way, String rg_num, String md_num) {
        this.ord_id = ord_id;
        this.mem_id = mem_id;
        this.code_name = code_name;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_ord_qty = tot_ord_qty;
        this.pay_way = pay_way;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }


    public void setStatus(OrderDto od){
        if(od.getOrd_rfnd() > 0){ //환불__이 하나라도 있으면 '환불진행중'으로 표기
            this.code_name = "REFUNDING";
        } else if (od.getOrd_ex() > 0) { //교환__이 하나라도 있으면 '교환진행중'으로 표기
            this.code_name = "EXCHANGING";
        } else if (od.getDlvy_ing() > 0) { //배송중이 하나라도 있으면 '배송중'으로 표기
            this.code_name = "DELIVERING";
        } else if (od.getDlvy_prep_ing() > 0) { //배송준비중이 하나라도 있으면 '배송준비중'으로 표기
            this.code_name = "DELIVERY_PREPARING";
        } else if (od.getProd_ing() > 0) { //상품준비중이 하나라도 있으면 '상품준비중'으로 표기
            this.code_name = "PRODUCT_PREPARING";
        } else if (this.tot_ord_qty.equals(od.getOrd_ing())) { //주문중
            this.code_name = "ORDERING";
        } else if (this.tot_ord_qty.equals(od.getOrd_cmplt())) { //주문완료
            this.code_name = "ORDER_COMPLETE";
        } else if (this.tot_ord_qty.equals(od.getOrd_fail())) { //주문실패
            this.code_name = "ORDER_FAIL";
        } else if (this.tot_ord_qty.equals(od.getOrd_cxl())) { //주문취소
            this.code_name = "ORDER_CANCEL";
        } else if (this.tot_ord_qty.equals(od.getDlvy_cmplt())) { //배송완료
            this.code_name = "DELIVERY_COMPLETE";
        }

    }

}
