package com.pofol.main.member.repository;

import com.pofol.main.member.dto.memberDto;

import java.util.Date;

public interface MemberRepository {

    public memberDto select_member(String mem_id);
    public Date now ();


}
