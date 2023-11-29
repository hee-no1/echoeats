package com.pofol.main.board.repository;

import com.pofol.main.board.dto.FaqDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FaqDaoImpl implements FaqDao{
    @Autowired
    private SqlSession session;
    private static String namespace = "com.pofol.main.repository.FaqDao.";

    // 등록하기
    public int insert(FaqDto dto) {
        return session.insert(namespace + "insert", dto);
    }
    // 수정하기
    public int update(FaqDto dto) {
        return session.update(namespace + "update", dto);
    }

    // 삭제하기
    public int delete(FaqDto dto) {
        return session.delete(namespace + "delete", dto);
    }

    // 카테고리 선택 시 리스트 보여주기
    public List<FaqDto> selectAll(FaqDto dto) {
        return session.selectList(namespace + "selectAll", dto);
    }

    // 내용 상세보기
    public FaqDto select(FaqDto dto) {
        return session.selectOne(namespace + "select", dto);
    }

//    public List<FaqDto> getPagedData(FaqDto dto) {
//        // paramMap에는 startRow, endRow, faq_type 등이 들어있어야 함.
//        return session.selectList(namespace + "getPagedData", dto);
//    }
//    public int getTotalFaqCount(FaqDto dto) {
//        return session.selectOne(namespace + "getTotalFaqCount", dto);
//    }
}
