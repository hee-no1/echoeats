package com.pofol.main.member.dto;

import java.util.Date;

public class MemberDto {

    private String mem_id;
    private int  mbs_id;  //멤버쉽 아이디
    private int  own_cp_id;   //보유 쿠폰 아이디
    private String gd_name; //등급 이름
    private String mem_code_id;  //회원 상태
    private String mem_pwd;
    private String mem_name;
    private String mem_email;
    private String mem_phone;
    private String mem_gender;

    private String mem_birth;
    private String addr;
    private int point;
    private String per_info_col;
    private String free_ship_recep;

    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;
    private Date update_date;

    private String role;

    public MemberDto() {
        this.point =0;
        this.gd_name = "일반";
        this.mem_code_id ="활성";
        this.free_ship_recep ="N";
        this.per_info_col = "N";
        this.role="USER";
    }

    public MemberDto(String mem_id, int mbs_id, int own_cp_id, String gd_name, String mem_code_id, String mem_pwd, String mem_name, String mem_email, String mem_phone, String mem_gender, String mem_birth, String addr, int point, String per_info_col, String free_ship_recep, Date rg_date, String rg_num, Date md_date, String md_num, Date update_date, String role) {
        this.mem_id = mem_id;
        this.mbs_id = mbs_id;
        this.own_cp_id = own_cp_id;
        this.gd_name = gd_name;
        this.mem_code_id = mem_code_id;
        this.mem_pwd = mem_pwd;
        this.mem_name = mem_name;
        this.mem_email = mem_email;
        this.mem_phone = mem_phone;
        this.mem_gender = mem_gender;
        this.mem_birth = mem_birth;
        this.addr = addr;
        this.point = point;
        this.per_info_col = per_info_col;
        this.free_ship_recep = free_ship_recep;
        this.rg_date = rg_date;
        this.rg_num = rg_num;
        this.md_date = md_date;
        this.md_num = md_num;
        this.update_date = update_date;
        this.role = role;
    }


    @Override
    public String toString() {
        return "memberDto{" +
                "mem_id='" + mem_id + '\'' +
                ", mbs_id=" + mbs_id +
                ", own_cp_id=" + own_cp_id +
                ", gd_name='" + gd_name + '\'' +
                ", mem_code_id='" + mem_code_id + '\'' +
                ", mem_pwd='" + mem_pwd + '\'' +
                ", mem_name='" + mem_name + '\'' +
                ", mem_email='" + mem_email + '\'' +
                ", mem_phone='" + mem_phone + '\'' +
                ", mem_gender='" + mem_gender + '\'' +
                ", mem_birth='" + mem_birth + '\'' +
                ", addr='" + addr + '\'' +
                ", point=" + point +
                ", per_info_col='" + per_info_col + '\'' +
                ", free_ship_recep='" + free_ship_recep + '\'' +
                ", rg_date=" + rg_date +
                ", rg_num='" + rg_num + '\'' +
                ", md_date=" + md_date +
                ", md_num='" + md_num + '\'' +
                ", update_date=" + update_date +
                ", role='" + role + '\'' +
                '}';
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public int getMbs_id() {
        return mbs_id;
    }

    public void setMbs_id(int mbs_id) {
        this.mbs_id = mbs_id;
    }

    public int getOwn_cp_id() {
        return own_cp_id;
    }

    public void setOwn_cp_id(int own_cp_id) {
        this.own_cp_id = own_cp_id;
    }

    public String getGd_name() {
        return gd_name;
    }

    public void setGd_name(String gd_name) {
        this.gd_name = gd_name;
    }

    public String getMem_code_id() {
        return mem_code_id;
    }

    public void setMem_code_id(String mem_code_id) {
        this.mem_code_id = mem_code_id;
    }

    public String getMem_pwd() {
        return mem_pwd;
    }

    public void setMem_pwd(String mem_pwd) {
        this.mem_pwd = mem_pwd;
    }

    public String getMem_name() {
        return mem_name;
    }

    public void setMem_name(String mem_name) {
        this.mem_name = mem_name;
    }

    public String getMem_email() {
        return mem_email;
    }

    public void setMem_email(String mem_email) {
        this.mem_email = mem_email;
    }

    public String getMem_phone() {
        return mem_phone;
    }

    public void setMem_phone(String mem_phone) {
        this.mem_phone = mem_phone;
    }

    public String getMem_gender() {
        return mem_gender;
    }

    public void setMem_gender(String mem_gender) {
        this.mem_gender = mem_gender;
    }

    public String getMem_birth() {
        return mem_birth;
    }

    public void setMem_birth(String mem_birth) {
        this.mem_birth = mem_birth;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getPer_info_col() {
        return per_info_col;
    }

    public void setPer_info_col(String per_info_col) {
        this.per_info_col = per_info_col;
    }

    public String getFree_ship_recep() {
        return free_ship_recep;
    }

    public void setFree_ship_recep(String free_ship_recep) {
        this.free_ship_recep = free_ship_recep;
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

    public Date getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(Date update_date) {
        this.update_date = update_date;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
