package com.pofol.main.member.repository;

import com.pofol.main.member.dto.MemberDto;

import java.util.Date;

public interface MemberRepository {

    public MemberDto select_member(String mem_id);

    public Date member_now();


}
