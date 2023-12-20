package com.pofol.main.member.service;

import com.pofol.main.member.dto.MemberDto;

import java.util.List;

public interface MemberService {

    MemberDto select(String id) throws Exception;

    int signin(MemberDto memberDto) throws Exception;

    List<MemberDto> check_grade(String date)throws Exception;

    int update_grade(MemberDto memberDto) throws Exception;

}
