package com.pofol.main.member.repository;

import com.pofol.main.member.dto.MemberDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepositoryImpl implements MemberRepository {
    @Autowired
    private SqlSession session;

    private static String namespace = "com.pofol.main.member.memberMapper.";
    @Override
    public MemberDto selectMember(String mem_id) throws Exception {
        return session.selectOne(namespace + "select_member", mem_id);
    }
    @Override
    public int deleteMember(String mem_id) throws Exception {
        return session.delete(namespace + "delete_member",mem_id);
    }
    @Override
    public int insertMember(MemberDto memberDto) throws Exception {
        System.out.println(memberDto.toString());
        return session.insert(namespace + "insert_member", memberDto);
    }
    @Override
    public int updateMember(MemberDto memberDto) throws Exception {
        return session.update(namespace + "update_member", memberDto);
    }
    @Override
    public int count() throws Exception {
        return session.selectOne(namespace + "count");
    }
    @Override
    public void deleteAll() throws Exception {
        session.delete(namespace + "deleteAll");
    }
    @Override
    public int checkId(String mem_id) throws Exception {
        return session.selectOne(namespace + "checkId", mem_id);
    }
    @Override
    public int checkEmail(String mem_email) throws Exception {
        return session.selectOne(namespace + "checkEmail", mem_email);
    }

    @Override
    public List<MemberDto> checkGrade(String date) throws Exception {
        return session.selectList(namespace+"checkGrade",date);
    }

}
