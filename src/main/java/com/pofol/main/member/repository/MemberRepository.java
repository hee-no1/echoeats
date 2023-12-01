package com.pofol.main.member.repository;

import com.pofol.main.member.dto.MemberDto;

public interface MemberRepository {

    MemberDto selectMember(String id);




}
