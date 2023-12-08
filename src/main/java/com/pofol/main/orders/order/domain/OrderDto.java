package com.pofol.main.orders.order.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

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
    private Integer tot_ord_qty; //총 수량 (상품별)
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


    //insert용도
    public OrderDto(String mem_id, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_prod_disc, Integer tot_ord_qty, Integer dlvy_fee, String pay_way, Integer ord_ing, String rg_num, String md_num) {
        this.mem_id = mem_id;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_prod_disc = tot_prod_disc;
        this.tot_ord_qty = tot_ord_qty;
        this.dlvy_fee = dlvy_fee;
        this.pay_way = pay_way;

        this.rg_num = rg_num;
        this.md_num = md_num;

        this.ord_ing = ord_ing; //주문중

        //0으로 초기값 세팅
        this.ord_cmplt = 0;
        this.ord_fail = 0;
        this.prod_ing = 0;
        this.dlvy_prep_ing = 0;
        this.dlvy_ing = 0;
        this.dlvy_complt = 0;
        this.ord_cxl = 0;
        this.ord_ex = 0;
        this.ord_rfnd = 0;
    }

    public void setStatus(List<OrderDetailDto> list){
        for (OrderDetailDto dto : list) {
            String status = dto.getCode_name();
            if (status.contains("REFUND") && !status.contains("COMPLETE")) { //환불___
                this.ord_rfnd++;
            } else if (status.contains("EXCHANGE") && !status.contains("COMPLETE")) { //교환___
                this.ord_ex++;
            } else if (status.equals("REFUND_COMPLETE") || status.equals("EXCHANGE_COMPLETE") || status.equals("DELIVERY_COMPLETE")) { //환불완료, 교환완료, 배송완료 -> 배송완료
                this.dlvy_complt++;
            } else if (status.equals("ORDERING")) { //주문중
                this.ord_ing++;
            } else if (status.equals("ORDER_COMPLETE")) { //주문완료
                this.ord_cmplt++;
            } else if (status.equals("ORDER_CANCEL")) { //주문취소
                this.ord_cxl++;
            } else if (status.equals("ORDER_FAIL")) { //주문실패
                this.ord_fail++;
            } else if (status.equals("PRODUCT_PREPARING")) { //상품준비중
                this.prod_ing++;
            } else if (status.equals("DELIVERY_PREPARING")) { //배송준비중
                this.dlvy_prep_ing++;
            } else if (status.equals("DELIVERING")) { //배송중
                this.dlvy_ing++;
            }
        }
    }
}


