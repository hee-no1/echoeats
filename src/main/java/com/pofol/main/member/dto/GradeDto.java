package com.pofol.main.member.dto;

import java.util.Date;

public class GradeDto {
    private String gd_name;  //PK, 등급이름
    private String gd_condition;  //조건
    private int acm_rate;   //적립률
    private String benefits;  //혜택
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;

    public GradeDto() {
    }

    public GradeDto(String gd_name, String gd_condition, int acm_rate, String benefits, String rg_num, String md_num) {
        this.gd_name = gd_name;
        this.gd_condition = gd_condition;
        this.acm_rate = acm_rate;
        this.benefits = benefits;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }

    public String getGd_name() {
        return gd_name;
    }

    public void setGd_name(String gd_name) {
        this.gd_name = gd_name;
    }

    public String getGd_condition() {
        return gd_condition;
    }

    public void setGd_condition(String gd_condition) {
        this.gd_condition = gd_condition;
    }

    public int getAcm_rate() {
        return acm_rate;
    }

    public void setAcm_rate(int acm_rate) {
        this.acm_rate = acm_rate;
    }

    public String getBenefits() {
        return benefits;
    }

    public void setBenefits(String benefits) {
        this.benefits = benefits;
    }

    public Date getRg_date() {
        return rg_date;
    }

    public void setRg_date(Date rg_date) {
        this.rg_date = rg_date;
    }

    public String getRg_num() {
        return rg_num;
    }

    public void setRg_num(String rg_num) {
        this.rg_num = rg_num;
    }

    public Date getMd_date() {
        return md_date;
    }

    public void setMd_date(Date md_date) {
        this.md_date = md_date;
    }

    public String getMd_num() {
        return md_num;
    }

    public void setMd_num(String md_num) {
        this.md_num = md_num;
    }

    @Override
    public String toString() {
        return "GradeDto{" +
                "gd_name='" + gd_name + '\'' +
                ", gd_condition='" + gd_condition + '\'' +
                ", acm_rate=" + acm_rate +
                ", benefits='" + benefits + '\'' +
                ", rg_date=" + rg_date +
                ", rg_num=" + rg_num +
                ", md_date=" + md_date +
                ", md_num=" + md_num +
                '}';
    }
}
