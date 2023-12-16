package com.pofol.main.board.repository;

import com.pofol.main.board.domain.MyQnaDto;
import com.pofol.main.member.dto.MemberDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MyQnaRepositoryImpl implements MyQnaRepository {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.pofol.repository.MyQnaRepository.";

    public List<MyQnaDto> getMyQna(MemberDto dto) {
        return session.selectList(namespace + "getMyQna", dto);
    }

}
