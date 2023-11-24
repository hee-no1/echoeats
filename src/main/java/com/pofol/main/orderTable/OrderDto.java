package com.pofol.main.orderTable;


import java.time.LocalDateTime;
import java.util.Objects;

public class OrderDto {
    private Long ord_id; //주문번호
    private String mem_id; //회원ID
    private LocalDateTime ord_date; //주문일시
    private String tot_prod_name; //총 상품명
    private Integer tot_prod_price; //총 상품 구매 금액
    private Integer tot_pay_price; //총 실 결제 금액
    private Integer tot_ord_qty; //총 수량
    private String pay_way; //결제수단
    private int ord_ing; //주문중
    private int ord_fail; //주문실패
    private int ord_cmplt; //주문완료
    private int prod_ing; //상품준비중
    private int ord_prep_dlvy; //배송준비중
    private int ord_in_dlvy; //배송중
    private int ord_dlvy; //배송완료
    private int ord_cxl; //취소
    private int ord_ex; //교환
    private int ord_rfnd; //환불

    public OrderDto(){}

    //[주문중 insert용]
    public OrderDto(String mem_id, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_ord_qty, String pay_way, int ord_ing) {
        this.mem_id = mem_id;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_ord_qty = tot_ord_qty;
        this.pay_way = pay_way;
        this.ord_ing = ord_ing;
    }

    public OrderDto(Long ord_id, String mem_id, LocalDateTime ord_date, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price, Integer tot_ord_qty, String pay_way, int ord_ing, int ord_fail, int ord_cmplt, int prod_ing, int ord_prep_dlvy, int ord_in_dlvy, int ord_dlvy, int ord_cxl, int ord_ex, int ord_rfnd) {
        this.ord_id = ord_id;
        this.mem_id = mem_id;
        this.ord_date = ord_date;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
        this.tot_ord_qty = tot_ord_qty;
        this.pay_way = pay_way;
        this.ord_ing = ord_ing;
        this.ord_fail = ord_fail;
        this.ord_cmplt = ord_cmplt;
        this.prod_ing = prod_ing;
        this.ord_prep_dlvy = ord_prep_dlvy;
        this.ord_in_dlvy = ord_in_dlvy;
        this.ord_dlvy = ord_dlvy;
        this.ord_cxl = ord_cxl;
        this.ord_ex = ord_ex;
        this.ord_rfnd = ord_rfnd;
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

    public int getOrd_ing() {
        return ord_ing;
    }

    public void setOrd_ing(int ord_ing) {
        this.ord_ing = ord_ing;
    }

    public int getOrd_fail() {
        return ord_fail;
    }

    public void setOrd_fail(int ord_fail) {
        this.ord_fail = ord_fail;
    }

    public int getOrd_cmplt() {
        return ord_cmplt;
    }

    public void setOrd_cmplt(int ord_cmplt) {
        this.ord_cmplt = ord_cmplt;
    }

    public int getProd_ing() {
        return prod_ing;
    }

    public void setProd_ing(int prod_ing) {
        this.prod_ing = prod_ing;
    }

    public int getOrd_prep_dlvy() {
        return ord_prep_dlvy;
    }

    public void setOrd_prep_dlvy(int ord_prep_dlvy) {
        this.ord_prep_dlvy = ord_prep_dlvy;
    }

    public int getOrd_in_dlvy() {
        return ord_in_dlvy;
    }

    public void setOrd_in_dlvy(int ord_in_dlvy) {
        this.ord_in_dlvy = ord_in_dlvy;
    }

    public int getOrd_dlvy() {
        return ord_dlvy;
    }

    public void setOrd_dlvy(int ord_dlvy) {
        this.ord_dlvy = ord_dlvy;
    }

    public int getOrd_cxl() {
        return ord_cxl;
    }

    public void setOrd_cxl(int ord_cxl) {
        this.ord_cxl = ord_cxl;
    }

    public int getOrd_ex() {
        return ord_ex;
    }

    public void setOrd_ex(int ord_ex) {
        this.ord_ex = ord_ex;
    }

    public int getOrd_rfnd() {
        return ord_rfnd;
    }

    public void setOrd_rfnd(int ord_rfnd) {
        this.ord_rfnd = ord_rfnd;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderDto orderDto = (OrderDto) o;
        return ord_ing == orderDto.ord_ing && ord_fail == orderDto.ord_fail && ord_cmplt == orderDto.ord_cmplt && prod_ing == orderDto.prod_ing && ord_prep_dlvy == orderDto.ord_prep_dlvy && ord_in_dlvy == orderDto.ord_in_dlvy && ord_dlvy == orderDto.ord_dlvy && ord_cxl == orderDto.ord_cxl && ord_ex == orderDto.ord_ex && ord_rfnd == orderDto.ord_rfnd && Objects.equals(ord_id, orderDto.ord_id) && Objects.equals(mem_id, orderDto.mem_id) && Objects.equals(ord_date, orderDto.ord_date) && Objects.equals(tot_prod_name, orderDto.tot_prod_name) && Objects.equals(tot_prod_price, orderDto.tot_prod_price) && Objects.equals(tot_pay_price, orderDto.tot_pay_price) && Objects.equals(tot_ord_qty, orderDto.tot_ord_qty) && Objects.equals(pay_way, orderDto.pay_way);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ord_id, mem_id, ord_date, tot_prod_name, tot_prod_price, tot_pay_price, tot_ord_qty, pay_way, ord_ing, ord_fail, ord_cmplt, prod_ing, ord_prep_dlvy, ord_in_dlvy, ord_dlvy, ord_cxl, ord_ex, ord_rfnd);
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
                ", tot_ord_qty=" + tot_ord_qty +
                ", pay_way='" + pay_way + '\'' +
                ", ord_ing=" + ord_ing +
                ", ord_fail=" + ord_fail +
                ", ord_cmplt=" + ord_cmplt +
                ", prod_ing=" + prod_ing +
                ", ord_prep_dlvy=" + ord_prep_dlvy +
                ", ord_in_dlvy=" + ord_in_dlvy +
                ", ord_dlvy=" + ord_dlvy +
                ", ord_cxl=" + ord_cxl +
                ", ord_ex=" + ord_ex +
                ", ord_rfnd=" + ord_rfnd +
                '}';
    }
}
