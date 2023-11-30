package com.pofol.main.member.repository;

import com.pofol.main.member.dto.MemberDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;


@Repository
public class MemberRepositoryImpl implements MemberRepository {

    @Autowired
    private SqlSession session;
    private static final String namespace = "com.pofol.main.member.memberMapper.";


    @Override
    public MemberDto select_member(String mem_id) {
        return session.selectOne(namespace + "select_member", mem_id);
    }

    @Override
    public Date member_now() {
        return session.selectOne(namespace + "member_now");
    }


}
