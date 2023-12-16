package com.pofol.main.board.repository;

import com.pofol.main.board.domain.ProQnaDto;

import java.util.List;

public interface ProQnaRepository {
    // 상품문의 전체조회
    List<ProQnaDto> getQnaList(ProQnaDto dto);

    // 상품문의 상세조회
    ProQnaDto getQna(ProQnaDto dto);

    // 상품문의 입력
    int insertQna(ProQnaDto dto);

    // 상품문의 수정
    int updateQna(ProQnaDto dto);

    // 상품문의 삭제
    int deleteQna(ProQnaDto dto);
}
