package com.pofol.main.member.dto;

import java.util.Date;

public class DelNotesDto {

    private String mem_id;  //회원id, PK
    private String name; //수령인
    private String number;
    private String place;
    private String enterway;
    private String msg;
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;

    public DelNotesDto() {
    }

    public DelNotesDto(String mem_id, String name, String number, String place, String enterway, String msg, String rg_num, String md_num) {
        this.mem_id = mem_id;
        this.name = name;
        this.number = number;
        this.place = place;
        this.enterway = enterway;
        this.msg = msg;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }

    @Override
    public String toString() {
        return "DelNotesDto{" +
                "mem_id='" + mem_id + '\'' +
                ", name='" + name + '\'' +
                ", number='" + number + '\'' +
                ", place='" + place + '\'' +
                ", enterway='" + enterway + '\'' +
                ", msg='" + msg + '\'' +
                ", rg_date=" + rg_date +
                ", rg_num=" + rg_num +
                ", md_date=" + md_date +
                ", md_num=" + md_num +
                '}';
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getEnterway() {
        return enterway;
    }

    public void setEnterway(String enterway) {
        this.enterway = enterway;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
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
}
