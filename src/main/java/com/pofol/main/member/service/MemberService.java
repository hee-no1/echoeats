package com.pofol.main.member.service;

import com.pofol.main.member.dto.MemberDto;

public interface MemberService {

    MemberDto select(String id) throws Exception;

    int signin(MemberDto memberDto) throws Exception;

}
