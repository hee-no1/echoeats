package com.pofol.main.member.repository;

import com.pofol.main.member.dto.MemberDto;

import java.util.Date;

public interface MemberRepository {

    MemberDto select_member(String mem_id);

    Date member_now();


}
