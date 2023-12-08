package com.pofol.main.member.repository;

import com.pofol.main.member.dto.GradeDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GradeRepositoryImpl implements GradeRepository{

    @Autowired
    private SqlSession session;

    private static String namespace = "com.pofol.main.member.gradeMapper.";
    @Override
    public GradeDto select_grade(String id) {
        return session.selectOne(namespace+"select_grade",id);
    }

    @Override
    public List<GradeDto> select_grade_list() {
        return session.selectList(namespace+"select_grade_list");
    }
}
