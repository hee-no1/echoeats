package com.pofol.main.orders.order.domain;

import java.time.LocalDateTime;
import java.util.Objects;

import lombok.Data;

public class OrderDto {

    private Long ord_id; //주문번호
    private String mem_id; //회원ID
    private LocalDateTime ord_date;  //주문일시
    private String tot_prod_name; //총 상품명
    private Integer tot_prod_price; //총 주문금액(상품금액-상품할인금액)
    private Integer tot_pay_price; //총 실결제 금액(총주문금액+배송비-할인금액)
    private Integer tot_prod_disc; //총 상품할인금액
    private Integer dlvy_fee; //배송비
    private Integer prod_qty; //총 상품 수량
    private String pay_way; //결제방법
    private Integer ord_ing; // 주문중
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

    public OrderDto(){}

    public OrderDto(Long ord_id, String mem_id, LocalDateTime ord_date, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_prod_disc, Integer dlvy_fee, Integer prod_qty, String pay_way, Integer ord_cmplt, Integer ord_fail, Integer prod_ing, Integer dlvy_prep_ing, Integer dlvy_ing, Integer dlvy_complt, Integer ord_cxl, Integer ord_ex, Integer ord_rfnd, String rg_num, String md_num) {
        this.ord_id = ord_id;
        this.mem_id = mem_id;
        this.ord_date = ord_date;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_prod_disc = tot_prod_disc;
        this.dlvy_fee = dlvy_fee;
        this.prod_qty = prod_qty;
        this.pay_way = pay_way;
        this.ord_cmplt = ord_cmplt;
        this.ord_fail = ord_fail;
        this.prod_ing = prod_ing;
        this.dlvy_prep_ing = dlvy_prep_ing;
        this.dlvy_ing = dlvy_ing;
        this.dlvy_complt = dlvy_complt;
        this.ord_cxl = ord_cxl;
        this.ord_ex = ord_ex;
        this.ord_rfnd = ord_rfnd;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }
    
    
    public Long getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(Long ord_id) {
        this.ord_id = ord_id;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
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

    public Integer getTot_prod_disc() {
        return tot_prod_disc;
    }

    public void setTot_prod_disc(Integer tot_prod_disc) {
        this.tot_prod_disc = tot_prod_disc;
    }

    public Integer getDlvy_fee() {
        return dlvy_fee;
    }

    public void setDlvy_fee(Integer dlvy_fee) {
        this.dlvy_fee = dlvy_fee;
    }

    public Integer getProd_qty() {
        return prod_qty;
    }

    public void setProd_qty(Integer prod_qty) {
        this.prod_qty = prod_qty;
    }

    public String getPay_way() {
        return pay_way;
    }

    public void setPay_way(String pay_way) {
        this.pay_way = pay_way;
    }

    public Integer getOrd_cmplt() {
        return ord_cmplt;
    }

    public void setOrd_cmplt(Integer ord_cmplt) {
        this.ord_cmplt = ord_cmplt;
    }

    public Integer getOrd_fail() {
        return ord_fail;
    }

    public void setOrd_fail(Integer ord_fail) {
        this.ord_fail = ord_fail;
    }

    public Integer getProd_ing() {
        return prod_ing;
    }

    public void setProd_ing(Integer prod_ing) {
        this.prod_ing = prod_ing;
    }

    public Integer getDlvy_prep_ing() {
        return dlvy_prep_ing;
    }

    public void setDlvy_prep_ing(Integer dlvy_prep_ing) {
        this.dlvy_prep_ing = dlvy_prep_ing;
    }

    public Integer getDlvy_ing() {
        return dlvy_ing;
    }

    public void setDlvy_ing(Integer dlvy_ing) {
        this.dlvy_ing = dlvy_ing;
    }

    public Integer getDlvy_complt() {
        return dlvy_complt;
    }

    public void setDlvy_complt(Integer dlvy_complt) {
        this.dlvy_complt = dlvy_complt;
    }

    public Integer getOrd_cxl() {
        return ord_cxl;
    }

    public void setOrd_cxl(Integer ord_cxl) {
        this.ord_cxl = ord_cxl;
    }

    public Integer getOrd_ex() {
        return ord_ex;
    }

    public void setOrd_ex(Integer ord_ex) {
        this.ord_ex = ord_ex;
    }

    public Integer getOrd_rfnd() {
        return ord_rfnd;
    }

    public void setOrd_rfnd(Integer ord_rfnd) {
        this.ord_rfnd = ord_rfnd;
    }

    public String getRg_num() {
        return rg_num;
    }

    public void setRg_num(String rg_num) {
        this.rg_num = rg_num;
    }

    public String getMd_num() {
        return md_num;
    }

    public void setMd_num(String md_num) {
        this.md_num = md_num;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderDto orderDto = (OrderDto) o;
        return Objects.equals(ord_id, orderDto.ord_id) && Objects.equals(mem_id, orderDto.mem_id) && Objects.equals(ord_date, orderDto.ord_date) && Objects.equals(tot_prod_name, orderDto.tot_prod_name) && Objects.equals(tot_prod_price, orderDto.tot_prod_price) && Objects.equals(tot_pay_price, orderDto.tot_pay_price) && Objects.equals(tot_prod_disc, orderDto.tot_prod_disc) && Objects.equals(dlvy_fee, orderDto.dlvy_fee) && Objects.equals(prod_qty, orderDto.prod_qty) && Objects.equals(pay_way, orderDto.pay_way) && Objects.equals(ord_cmplt, orderDto.ord_cmplt) && Objects.equals(ord_fail, orderDto.ord_fail) && Objects.equals(prod_ing, orderDto.prod_ing) && Objects.equals(dlvy_prep_ing, orderDto.dlvy_prep_ing) && Objects.equals(dlvy_ing, orderDto.dlvy_ing) && Objects.equals(dlvy_complt, orderDto.dlvy_complt) && Objects.equals(ord_cxl, orderDto.ord_cxl) && Objects.equals(ord_ex, orderDto.ord_ex) && Objects.equals(ord_rfnd, orderDto.ord_rfnd) && Objects.equals(rg_num, orderDto.rg_num) && Objects.equals(md_num, orderDto.md_num);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ord_id, mem_id, ord_date, tot_prod_name, tot_prod_price, tot_pay_price, tot_prod_disc, dlvy_fee, prod_qty, pay_way, ord_cmplt, ord_fail, prod_ing, dlvy_prep_ing, dlvy_ing, dlvy_complt, ord_cxl, ord_ex, ord_rfnd, rg_num, md_num);
    }

    @Override
    public String toString() {
        return "OrderDto{" +
                "ord_id=" + ord_id +
                ", mem_id='" + mem_id + '\'' +
                ", ord_date=" + ord_date +
                ", tot_prod_name='" + tot_prod_name + '\'' +
                ", tot_prod_price=" + tot_prod_price +
                ", tot_pay_price=" + tot_pay_price +
                ", tot_prod_disc=" + tot_prod_disc +
                ", dlvy_fee=" + dlvy_fee +
                ", prod_qty=" + prod_qty +
                ", pay_way='" + pay_way + '\'' +
                ", ord_cmplt=" + ord_cmplt +
                ", ord_fail=" + ord_fail +
                ", prod_ing=" + prod_ing +
                ", dlvy_prep_ing=" + dlvy_prep_ing +
                ", dlvy_ing=" + dlvy_ing +
                ", dlvy_complt=" + dlvy_complt +
                ", ord_cxl=" + ord_cxl +
                ", ord_ex=" + ord_ex +
                ", ord_rfnd=" + ord_rfnd +
                ", rg_num='" + rg_num + '\'' +
                ", md_num='" + md_num + '\'' +
                '}';
    }
}


