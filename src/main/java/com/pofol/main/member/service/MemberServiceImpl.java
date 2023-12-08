package com.pofol.main.member.service;

import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberRepository memberRepository;


    @Override
    public MemberDto select(String id) throws Exception {
        return memberRepository.selectMember(id);
    }


    @Override
    public int signin (MemberDto memberDto) throws Exception {
         return memberRepository.insertMember(memberDto);

     }

    @Override
    public List<MemberDto> check_grade(String date)throws Exception {
        return memberRepository.checkGrade(date);
    }

}
