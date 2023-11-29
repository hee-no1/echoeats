package com.pofol.main.member.repository;

import com.pofol.main.member.dto.memberDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;


@Repository
public class MemberRepositoryImpl implements MemberRepository {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.pofol.main.member.memberMapper.";


    @Override
    public memberDto select_member(String mem_id) {
        return session.selectOne(namespace+"select_member", mem_id);
    }

    @Override
    public Date now() {
        return session.selectOne(namespace+"now");
    }


}
