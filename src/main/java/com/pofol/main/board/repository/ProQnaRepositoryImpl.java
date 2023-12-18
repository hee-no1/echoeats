package com.pofol.main.board.repository;

import com.pofol.main.board.domain.ProQnaDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProQnaRepositoryImpl implements ProQnaRepository {
    @Autowired
    private SqlSession session;

    private static String namespace = "com.pofol.repository.ProQnaRepository.";

    // 상품문의 전체조회
    @Override
    public List<ProQnaDto> getQnaList(ProQnaDto dto) {
        return session.selectList(namespace + "getQnaList", dto);
    }
    // 상품문의 상세조회
    @Override
    public ProQnaDto getQna(ProQnaDto dto) {
        return session.selectOne(namespace + "getQna", dto);
    }
    // 상품문의 입력
    @Override
    public int insertQna(ProQnaDto dto) {
        return session.insert(namespace + "insertQna", dto);
    }
    // 상품문의 수정
    @Override
    public int updateQna(ProQnaDto dto) {
        return session.update(namespace + "updateQna", dto);
    }
    // 상품문의 삭제
    @Override
    public int deleteQna(ProQnaDto dto) {
        return session.delete(namespace + "deleteQna", dto);
    }

}
