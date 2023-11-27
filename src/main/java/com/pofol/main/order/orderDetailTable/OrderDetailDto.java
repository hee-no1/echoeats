package com.pofol.main.order.orderDetailTable;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.Objects;

public class OrderDetailDto {

    private Long ord_det_id; //상품 주문 번호
    private Long ord_id; //주문번호 <- 주문table
    private LocalDateTime ord_date; //주문일시 <- 주문table
    private String code_id; //주문상태코드
    private Long prod_id; //상품ID <- PaymentDateDto 안에 ProductDto
    private String prod_name; //상품명
    private Integer prod_qty; //상품수량
    private Integer prod_tot_price; //상품별 총 금액 <- computed
    private String pack_type; //포장타입
    private String mem_id; //회원ID
    private Long dlvy_notes_id; //배숑요청사항ID
    private String dlvy_attr; //배송속성
    private LocalDateTime ex_rfnd_date; //교환/환불 가능 일자

    public OrderDetailDto(){}

    public OrderDetailDto(Long ord_id, LocalDateTime ord_date, String code_id, Long prod_id, String prod_name, Integer prod_qty, Integer prod_tot_price, String pack_type, String mem_id, Long dlvy_notes_id, String dlvy_attr) {
        this.ord_id = ord_id;
        this.ord_date = ord_date;
        this.code_id = code_id;
        this.prod_id = prod_id;
        this.prod_name = prod_name;
        this.prod_qty = prod_qty;
        this.prod_tot_price = prod_tot_price;
        this.pack_type = pack_type;
        this.mem_id = mem_id;
        this.dlvy_notes_id = dlvy_notes_id;
        this.dlvy_attr = dlvy_attr;
    }

    public OrderDetailDto(Long ord_det_id, Long ord_id, LocalDateTime ord_date, String code_id, Long prod_id, String prod_name, Integer prod_qty, Integer prod_tot_price, String pack_type, String mem_id, Long dlvy_notes_id, String dlvy_attr, LocalDateTime ex_rfnd_date) {
        this.ord_det_id = ord_det_id;
        this.ord_id = ord_id;
        this.ord_date = ord_date;
        this.code_id = code_id;
        this.prod_id = prod_id;
        this.prod_name = prod_name;
        this.prod_qty = prod_qty;
        this.prod_tot_price = prod_tot_price;
        this.pack_type = pack_type;
        this.mem_id = mem_id;
        this.dlvy_notes_id = dlvy_notes_id;
        this.dlvy_attr = dlvy_attr;
        this.ex_rfnd_date = ex_rfnd_date;
    }

    public Long getOrd_det_id() {
        return ord_det_id;
    }

    public void setOrd_det_id(Long ord_det_id) {
        this.ord_det_id = ord_det_id;
    }

    public Long getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(Long ord_id) {
        this.ord_id = ord_id;
    }

    public LocalDateTime getOrd_date() {
        return ord_date;
    }

    public void setOrd_date(LocalDateTime ord_date) {
        this.ord_date = ord_date;
    }

    public String getCode_id() {
        return code_id;
    }

    public void setCode_id(String code_id) {
        this.code_id = code_id;
    }

    public Long getProd_id() {
        return prod_id;
    }

    public void setProd_id(Long prod_id) {
        this.prod_id = prod_id;
    }

    public String getProd_name() {
        return prod_name;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    public Integer getProd_qty() {
        return prod_qty;
    }

    public void setProd_qty(Integer prod_qty) {
        this.prod_qty = prod_qty;
    }

    public Integer getProd_tot_price() {
        return prod_tot_price;
    }

    public void setProd_tot_price(Integer prod_tot_price) {
        this.prod_tot_price = prod_tot_price;
    }

    public String getPack_type() {
        return pack_type;
    }

    public void setPack_type(String pack_type) {
        this.pack_type = pack_type;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public Long getDlvy_notes_id() {
        return dlvy_notes_id;
    }

    public void setDlvy_notes_id(Long dlvy_notes_id) {
        this.dlvy_notes_id = dlvy_notes_id;
    }

    public String getDlvy_attr() {
        return dlvy_attr;
    }

    public void setDlvy_attr(String dlvy_attr) {
        this.dlvy_attr = dlvy_attr;
    }

    public LocalDateTime getEx_rfnd_date() {
        return ex_rfnd_date;
    }

    public void setEx_rfnd_date(LocalDateTime ex_rfnd_date) {
        this.ex_rfnd_date = ex_rfnd_date;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderDetailDto that = (OrderDetailDto) o;
        return Objects.equals(ord_det_id, that.ord_det_id) && Objects.equals(ord_id, that.ord_id) && Objects.equals(ord_date, that.ord_date) && Objects.equals(code_id, that.code_id) && Objects.equals(prod_id, that.prod_id) && Objects.equals(prod_name, that.prod_name) && Objects.equals(prod_qty, that.prod_qty) && Objects.equals(prod_tot_price, that.prod_tot_price) && Objects.equals(pack_type, that.pack_type) && Objects.equals(mem_id, that.mem_id) && Objects.equals(dlvy_notes_id, that.dlvy_notes_id) && Objects.equals(dlvy_attr, that.dlvy_attr) && Objects.equals(ex_rfnd_date, that.ex_rfnd_date);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ord_det_id, ord_id, ord_date, code_id, prod_id, prod_name, prod_qty, prod_tot_price, pack_type, mem_id, dlvy_notes_id, dlvy_attr, ex_rfnd_date);
    }

    @Override
    public String toString() {
        return "OrderDetailDto{" +
                "ord_det_id=" + ord_det_id +
                ", ord_id=" + ord_id +
                ", ord_date=" + ord_date +
                ", code_id='" + code_id + '\'' +
                ", prod_id=" + prod_id +
                ", prod_name='" + prod_name + '\'' +
                ", prod_qty=" + prod_qty +
                ", prod_tot_price=" + prod_tot_price +
                ", pack_type='" + pack_type + '\'' +
                ", mem_id='" + mem_id + '\'' +
                ", dlvy_notes_id=" + dlvy_notes_id +
                ", dlvy_attr='" + dlvy_attr + '\'' +
                ", ex_rfnd_date=" + ex_rfnd_date +
                '}';
    }
}
