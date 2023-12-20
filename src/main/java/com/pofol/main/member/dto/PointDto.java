package com.pofol.main.member.dto;

import java.util.Date;

public class PointDto {
    private int point_id;
    private int price;
    private String status;
    private String reason;
    private Date his_end_date;
    private String rg_date;
    private String rg_num;
    private String md_date;
    private String md_num;
    private String mem_id;
    private Long ord_id;

    public PointDto(){}

    public PointDto(int price, String status, String reason, String mem_id, Long ord_id) {
        this.price = price;
        this.status = status;
        this.reason = reason;
        this.mem_id = mem_id;
        this.ord_id = ord_id;
    }

    public PointDto(int point_id, int price, String status, String reason, Date his_end_date, String mem_id) {
        this.point_id = point_id;
        this.price = price;
        this.status = status;
        this.reason = reason;
        this.his_end_date = his_end_date;
        this.mem_id = mem_id;
    }
    public PointDto(int point_id, int price, String status, String reason, Date his_end_date, String rg_date, String rg_num, String md_date, String md_num, String mem_id) {
        this.point_id = point_id;
        this.price = price;
        this.status = status;
        this.reason = reason;
        this.his_end_date = his_end_date;
        this.rg_date = rg_date;
        this.rg_num = rg_num;
        this.md_date = md_date;
        this.md_num = md_num;
        this.mem_id = mem_id;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public int getPoint_id() {
        return point_id;
    }
    public void setPoint_id(int point_hist_id) {
        this.point_id = point_hist_id;
    }
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public String getReason() {
        return reason;
    }
    public void setReason(String reason) {
        this.reason = reason;
    }
    public Date getHis_end_date() {
        return his_end_date;
    }
    public void setHis_end_date(Date his_end_date) {
        this.his_end_date = his_end_date;
    }
    public String getRg_date() {
        return rg_date;
    }
    public void setRg_date(String rg_date) {
        this.rg_date = rg_date;
    }
    public String getRg_num() {
        return rg_num;
    }
    public void setRg_num(String rg_num) {
        this.rg_num = rg_num;
    }
    public String getMd_date() {
        return md_date;
    }
    public void setMd_date(String md_date) {
        this.md_date = md_date;
    }
    public String getMd_num() {
        return md_num;
    }
    public void setMd_num(String md_num) {
        this.md_num = md_num;
    }
    public Long getOrd_id() {
        return ord_id;
    }
    public void setOrd_id(Long ord_id) {
        this.ord_id = ord_id;
    }

    @Override
    public String toString() {
        return "PointDto{" +
                "point_id=" + point_id +
                ", price=" + price +
                ", status='" + status + '\'' +
                ", reason='" + reason + '\'' +
                ", his_end_date=" + his_end_date +
                ", mem_id='" + mem_id + '\'' +
                ", ord_id=" + ord_id +
                '}';
    }
}
