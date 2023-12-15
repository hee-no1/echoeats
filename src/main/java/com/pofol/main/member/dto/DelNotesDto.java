package com.pofol.main.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DelNotesDto {

    private String mem_id;  //회원id, PK
    private String name; //받으실 분
    private String number; //휴대폰
    private String place; //받으실 장소
    private String entryway; //공동현관 출입방법
    private String column_sts; //코드 테이블의 상태
    private String entryway_detail; //공동현관 상세 내용
    private String msg; //배송완료 메세지 전송
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;

    private String mem_name; //회원 이름
    private String mem_phone; //회원 전화번호

}
