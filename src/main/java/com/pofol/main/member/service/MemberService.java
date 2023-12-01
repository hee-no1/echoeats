package com.pofol.main.member.service;

import com.pofol.main.member.dto.MemberDto;

public interface MemberService {

    MemberDto select(String id);

    int signin(MemberDto memberDto) throws Exception;

}
