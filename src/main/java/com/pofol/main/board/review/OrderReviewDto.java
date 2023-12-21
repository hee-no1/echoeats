package com.pofol.main.board.review;

import java.util.Date;

public class OrderReviewDto {
    private Date orderDate;

    private int count, ord_id, prod_id;
    private String mem_id, reviewStatus;

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(int ord_id) {
        this.ord_id = ord_id;
    }

    public int getProd_id() {
        return prod_id;
    }

    public void setProd_id(int prod_id) {
        this.prod_id = prod_id;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public String getReviewStatus() {
        return reviewStatus;
    }

    public void setReviewStatus(String reviewStatus) {
        this.reviewStatus = reviewStatus;
    }

    @Override
    public String toString() {
        return "OrderReviewDto{" +
                "orderDate=" + orderDate +
                ", count=" + count +
                ", ord_id=" + ord_id +
                ", prod_id=" + prod_id +
                ", mem_id='" + mem_id + '\'' +
                ", reviewStatus='" + reviewStatus + '\'' +
                '}';
    }
}
