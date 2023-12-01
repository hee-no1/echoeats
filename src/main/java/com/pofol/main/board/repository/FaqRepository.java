package com.pofol.main.board.repository;

import com.pofol.main.board.domain.FaqDto;

import java.util.List;

public interface FaqRepository {
    int insert(FaqDto dto) throws Exception;
    int update(FaqDto dto) throws Exception;
    int delete(FaqDto dto) throws Exception;
    List<FaqDto> selectAll(FaqDto dto) throws Exception;
    FaqDto select(FaqDto dto) throws Exception;

//    List<FaqDto> getPagedData(FaqDto dto) throws Exception;
//    int getTotalFaqCount(FaqDto dto) throws Exception;
}
