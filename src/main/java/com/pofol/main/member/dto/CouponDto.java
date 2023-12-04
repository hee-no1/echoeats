package com.pofol.main.member.dto;

import java.util.Date;

public class CouponDto {
        private int cp_id;   //PK, AUTO_INCREMENT
        private String cp_name;  //쿠폰 이름
        private String cp_content;  //쿠폰 내용
        private int disc_cash;  //할인 금액
        private int min_amt;  //최소 주문 금액
        private int max_disc_amt;  //최대 할인 금액
        private Date rg_date;
        private int rg_num;
        private Date md_date;
        private int md_num;

    public CouponDto( String cp_name, String cp_content, int disc_cash, int min_amt, int max_disc_amt, int rg_num, int md_num) {
        this.cp_name = cp_name;
        this.cp_content = cp_content;
        this.disc_cash = disc_cash;
        this.min_amt = min_amt;
        this.max_disc_amt = max_disc_amt;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }

    public int getCp_id() {
        return cp_id;
    }

    public void setCp_id(int cp_id) {
        this.cp_id = cp_id;
    }

    public String getCp_name() {
        return cp_name;
    }

    public void setCp_name(String cp_name) {
        this.cp_name = cp_name;
    }

    public String getCp_content() {
        return cp_content;
    }

    public void setCp_content(String cp_content) {
        this.cp_content = cp_content;
    }

    public int getDisc_cash() {
        return disc_cash;
    }

    public void setDisc_cash(int disc_cash) {
        this.disc_cash = disc_cash;
    }

    public int getMin_amt() {
        return min_amt;
    }

    public void setMin_amt(int min_amt) {
        this.min_amt = min_amt;
    }

    public int getMax_disc_amt() {
        return max_disc_amt;
    }

    public void setMax_disc_amt(int max_disc_amt) {
        this.max_disc_amt = max_disc_amt;
    }

    public Date getRg_date() {
        return rg_date;
    }

    public void setRg_date(Date rg_date) {
        this.rg_date = rg_date;
    }

    public int getRg_num() {
        return rg_num;
    }

    public void setRg_num(int rg_num) {
        this.rg_num = rg_num;
    }

    public Date getMd_date() {
        return md_date;
    }

    public void setMd_date(Date md_date) {
        this.md_date = md_date;
    }

    public int getMd_num() {
        return md_num;
    }

    public void setMd_num(int md_num) {
        this.md_num = md_num;
    }

    @Override
    public String toString() {
        return "CouponDto{" +
                "cp_id=" + cp_id +
                ", cp_name='" + cp_name + '\'' +
                ", cp_content='" + cp_content + '\'' +
                ", disc_cash=" + disc_cash +
                ", min_amt=" + min_amt +
                ", max_disc_amt=" + max_disc_amt +
                ", rg_date=" + rg_date +
                ", rg_num=" + rg_num +
                ", md_date=" + md_date +
                ", md_num=" + md_num +
                '}';
    }
}
