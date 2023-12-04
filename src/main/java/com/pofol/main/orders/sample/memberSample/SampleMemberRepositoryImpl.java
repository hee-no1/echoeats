package com.pofol.main.orders.sample.memberSample;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SampleMemberRepositoryImpl implements SampleMemberRepository {

    private String namespace = "com.pofol.main.order.sampleMemberMapper.";
    private final SqlSession session;

    @Autowired
    public SampleMemberRepositoryImpl(SqlSession session) {
        this.session = session;
    }

    @Override
    public SampleMemberDto selectMember(String mem_id) throws Exception{
        return session.selectOne(namespace+"select",mem_id);
    }
}
