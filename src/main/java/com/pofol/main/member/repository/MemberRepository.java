package com.pofol.main.member.repository;

import com.pofol.main.member.dto.MemberDto;

public interface MemberRepository {

    MemberDto selectMember(String id) throws Exception;
    int deleteMember(String id) throws Exception;
    int insertMember(MemberDto memberDto) throws Exception;
    int updateMember(MemberDto memberDto) throws Exception;
    int count() throws Exception;
    void deleteAll() throws Exception;
    int checkId(String id) throws Exception;
    int checkEmail(String id) throws Exception;

}
