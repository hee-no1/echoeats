package com.pofol.main.member.repository;

import com.pofol.main.member.dto.DelNotesDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DelNotesRepositoryImpl implements DelNotesRepository{

    @Autowired
    private SqlSession session;

    private static String namespace = "com.pofol.main.member.delNotesMapper.";
    @Override
    public int insert_delNotes(DelNotesDto dto) {
        return session.insert(namespace+"insert_delNotes", dto);
    }

    @Override
    public int update_delNotes(DelNotesDto dto) {
        return session.update(namespace="update_delNotes", dto);
    }

    @Override
    public DelNotesDto select_delNotes(String mem_id) {
        return session.selectOne(namespace+"select_delNotes", mem_id);
    }
}
