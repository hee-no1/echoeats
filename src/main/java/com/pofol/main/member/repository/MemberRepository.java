package com.pofol.main.member.repository;

import com.pofol.main.member.dto.MemberDto;

import java.util.List;

public interface MemberRepository {

    MemberDto selectMember(String id) throws Exception;
    int deleteMember(String id) throws Exception;
    int insertMember(MemberDto memberDto) throws Exception;
    int updateMember(MemberDto memberDto) throws Exception;
    int count() throws Exception;
    void deleteAll() throws Exception;
    int checkId(String id) throws Exception;
    int checkEmail(String id) throws Exception;
    List<MemberDto> checkGrade(String date) throws Exception;
    int updateGrade(MemberDto memberDto) throws Exception;
}
