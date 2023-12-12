package com.pofol.admin.board;

import com.pofol.main.board.domain.FaqDto;

import java.util.List;

public interface AdminFaqRepository {
    int insert(FaqDto dto) throws Exception;
    int update(FaqDto dto) throws Exception;
    int delete(FaqDto dto) throws Exception;
    List<FaqDto> selectAll(FaqDto dto) throws Exception;
    FaqDto select(FaqDto dto) throws Exception;
    int count(FaqDto dto) throws Exception;
}
