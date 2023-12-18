package com.pofol.main.member.dto;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemCouponDto {
    private int own_cp_id;  //PK,  AUTO_INCREMENT
    private Long cp_id;   //FK,쿠폰 아이디
    private String mem_id;  //FK, 회원 아이디
    private int cp_qty;  //쿠폰 수량
    private String cp_sts;  //쿠폰 상태
    private Date cp_del_date;  //쿠폰 소멸 일시
    private Date rg_date;
    private String rg_num;    //디폴트 값 존재해서 생성자에 넣지 않음
    private Date md_date;
    private String md_num;

    private MemberDto memberDto;
    private CouponDto couponDto;

    public MemCouponDto() {
    }

    public MemCouponDto( String mem_id, Long cp_id) throws ParseException {
        this.cp_id = cp_id;
        this.mem_id = mem_id;
        this.cp_qty = 1;
        this.cp_sts = "UNUSED";

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = "2023-12-23 12:23:00";
        this.cp_del_date = dateFormat.parse(dateString);
        this.rg_num = "admin123";
        this.md_num = "admin123";
    }

    public MemCouponDto(int cp_qty, String cp_sts, Date cp_del_date, MemberDto memberDto, CouponDto couponDto) {
        this.cp_qty = cp_qty;
        this.cp_sts = cp_sts;
        this.cp_del_date = cp_del_date;
        this.memberDto = memberDto;
        this.couponDto = couponDto;
    }

    public MemCouponDto(Long cp_id, String mem_id, int cp_qty, String cp_sts, Date cp_del_date, String rg_num, String md_num) {
        this.cp_id = cp_id;
        this.mem_id = mem_id;
        this.cp_qty = cp_qty;
        this.cp_sts = cp_sts;
        this.cp_del_date = cp_del_date;
        this.rg_num = rg_num;
        this.md_num = md_num;
    }

    public int getOwn_cp_id() {
        return own_cp_id;
    }

    public void setOwn_cp_id(int own_cp_id) {
        this.own_cp_id = own_cp_id;
    }

    public Long getCp_id() {
        return cp_id;
    }

    public void setCp_id(Long cp_id) {
        this.cp_id = cp_id;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
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

    public Date getCp_del_date() {
        return cp_del_date;
    }

    public void setCp_del_date(Date cp_del_date) {
        this.cp_del_date = cp_del_date;
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

    public MemberDto getMemberDto() {
        return memberDto;
    }

    public void setMemberDto(MemberDto memberDto) {
        this.memberDto = memberDto;
    }

    public CouponDto getCouponDto() {
        return couponDto;
    }

    public void setCouponDto(CouponDto couponDto) {
        this.couponDto = couponDto;
    }

    @Override
    public String toString() {
        return "MemCouponDto{" +
                "own_cp_id=" + own_cp_id +
                ", cp_id=" + cp_id +
                ", mem_id='" + mem_id + '\'' +
                ", cp_qty=" + cp_qty +
                ", cp_sts='" + cp_sts + '\'' +
                ", cp_del_date=" + cp_del_date +
                ", rg_date=" + rg_date +
                ", rg_num=" + rg_num +
                ", md_date=" + md_date +
                ", md_num=" + md_num +
                ", memberDto=" + memberDto +
                ", couponDto=" + couponDto +
                '}';
    }
}
