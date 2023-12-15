package com.pofol.main.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemCouponDto {
    private Long own_cp_id;  //PK,  AUTO_INCREMENT
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

}
