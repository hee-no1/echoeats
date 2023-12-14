package com.pofol.main.member.dto;

public class CouponJoinDto {
    private String mem_id;
    private int cp_id;
    private int cp_qty;
    private String cp_sts;
    private String cp_del_date;
    private String cp_name;
    private int cash_rate;
    private int min_amt;
    private int max_disc_amt;
    private String type;

    public CouponJoinDto() {
    }

    public CouponJoinDto(String mem_id, int cp_id, int cp_qty, String cp_sts, String cp_del_date, String cp_name, int cash_rate, int min_amt, int max_disc_amt, String type) {
        this.mem_id = mem_id;
        this.cp_id = cp_id;
        this.cp_qty = cp_qty;
        this.cp_sts = cp_sts;
        this.cp_del_date = cp_del_date;
        this.cp_name = cp_name;
        this.cash_rate = cash_rate;
        this.min_amt = min_amt;
        this.max_disc_amt = max_disc_amt;
        this.type = type;
    }

    @Override
    public String toString() {
        return "CouponJoinDto{" +
                "mem_id='" + mem_id + '\'' +
                ", cp_id=" + cp_id +
                ", cp_qty=" + cp_qty +
                ", cp_sts='" + cp_sts + '\'' +
                ", cp_del_date='" + cp_del_date + '\'' +
                ", cp_name='" + cp_name + '\'' +
                ", cash_rate=" + cash_rate +
                ", min_amt=" + min_amt +
                ", max_disc_amt=" + max_disc_amt +
                ", type='" + type + '\'' +
                '}';
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public int getCp_id() {
        return cp_id;
    }

    public void setCp_id(int cp_id) {
        this.cp_id = cp_id;
    }

    public int getCp_qty() {
        return cp_qty;
    }

    public void setCp_qty(int cp_qty) {
        this.cp_qty = cp_qty;
    }

    public String getCp_sts() {
        return cp_sts;
    }

    public void setCp_sts(String cp_sts) {
        this.cp_sts = cp_sts;
    }

    public String getCp_del_date() {
        return cp_del_date;
    }

    public void setCp_del_date(String cp_del_date) {
        this.cp_del_date = cp_del_date;
    }

    public String getCp_name() {
        return cp_name;
    }

    public void setCp_name(String cp_name) {
        this.cp_name = cp_name;
    }

    public int getCash_rate() {
        return cash_rate;
    }

    public void setCash_rate(int cash_rate) {
        this.cash_rate = cash_rate;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
