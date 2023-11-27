package com.pofol.main.order.orderHistoryTable;

import java.time.LocalDateTime;
import java.util.Objects;

public class OrderHistoryDto {
    private Long ord_hist_id; //주문이력Id
    private Long ord_id; //주문번호
    private String tot_code_id; //주문상태
    private LocalDateTime ord_date; //주문일시
    private String tot_prod_name; //총 상품명
    private Integer tot_prod_price; //총 상품구매금액
    private Integer tot_pay_price; //총 실 결제금액
    private Integer tot_ord_qty; //총 수량
    private String pay_way; //결제수단

    public OrderHistoryDto(){}

    public OrderHistoryDto(Long ord_id, String tot_code_id, LocalDateTime ord_date, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_ord_qty, String pay_way) {
        this.ord_id = ord_id;
        this.tot_code_id = tot_code_id;
        this.ord_date = ord_date;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_ord_qty = tot_ord_qty;
        this.pay_way = pay_way;
    }

    public OrderHistoryDto(Long ord_hist_id, Long ord_id, String tot_code_id, LocalDateTime ord_date, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_ord_qty, String pay_way) {
        this.ord_hist_id = ord_hist_id;
        this.ord_id = ord_id;
        this.tot_code_id = tot_code_id;
        this.ord_date = ord_date;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_ord_qty = tot_ord_qty;
        this.pay_way = pay_way;
    }

    public Long getOrd_hist_id() {
        return ord_hist_id;
    }

    public void setOrd_hist_id(Long ord_hist_id) {
        this.ord_hist_id = ord_hist_id;
    }

    public Long getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(Long ord_id) {
        this.ord_id = ord_id;
    }

    public String getTot_code_id() {
        return tot_code_id;
    }

    public void setTot_code_id(String tot_code_id) {
        this.tot_code_id = tot_code_id;
    }

    public LocalDateTime getOrd_date() {
        return ord_date;
    }

    public void setOrd_date(LocalDateTime ord_date) {
        this.ord_date = ord_date;
    }

    public String getTot_prod_name() {
        return tot_prod_name;
    }

    public void setTot_prod_name(String tot_prod_name) {
        this.tot_prod_name = tot_prod_name;
    }

    public Integer getTot_prod_price() {
        return tot_prod_price;
    }

    public void setTot_prod_price(Integer tot_prod_price) {
        this.tot_prod_price = tot_prod_price;
    }

    public Integer getTot_pay_price() {
        return tot_pay_price;
    }

    public void setTot_pay_price(Integer tot_pay_price) {
        this.tot_pay_price = tot_pay_price;
    }

    public Integer getTot_ord_qty() {
        return tot_ord_qty;
    }

    public void setTot_ord_qty(Integer tot_ord_qty) {
        this.tot_ord_qty = tot_ord_qty;
    }

    public String getPay_way() {
        return pay_way;
    }

    public void setPay_way(String pay_way) {
        this.pay_way = pay_way;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderHistoryDto that = (OrderHistoryDto) o;
        return Objects.equals(ord_hist_id, that.ord_hist_id) && Objects.equals(ord_id, that.ord_id) && Objects.equals(tot_code_id, that.tot_code_id) && Objects.equals(ord_date, that.ord_date) && Objects.equals(tot_prod_name, that.tot_prod_name) && Objects.equals(tot_prod_price, that.tot_prod_price) && Objects.equals(tot_pay_price, that.tot_pay_price) && Objects.equals(tot_ord_qty, that.tot_ord_qty) && Objects.equals(pay_way, that.pay_way);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ord_hist_id, ord_id, tot_code_id, ord_date, tot_prod_name, tot_prod_price, tot_pay_price, tot_ord_qty, pay_way);
    }

    @Override
    public String toString() {
        return "OrderHistoryDto{" +
                "ord_hist_id=" + ord_hist_id +
                ", ord_id=" + ord_id +
                ", tot_code_id='" + tot_code_id + '\'' +
                ", ord_date=" + ord_date +
                ", tot_prod_name='" + tot_prod_name + '\'' +
                ", tot_pay_price=" + tot_prod_price +
                ", tot_ord_pay=" + tot_pay_price +
                ", tot_ord_qth=" + tot_ord_qty +
                ", pay_way='" + pay_way + '\'' +
                '}';
    }
}
