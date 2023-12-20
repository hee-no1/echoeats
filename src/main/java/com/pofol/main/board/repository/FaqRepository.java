package com.pofol.main.board.repository;

import com.pofol.main.board.domain.FaqDto;
import com.pofol.main.orders.order.domain.SearchOrderCondition;

import java.util.List;

public interface FaqRepository {
    int insert(FaqDto dto) throws Exception;
    int update(FaqDto dto) throws Exception;
    int delete(FaqDto dto) throws Exception;
    List<FaqDto> selectAll(FaqDto dto) throws Exception;
    FaqDto select(FaqDto dto) throws Exception;
    int count(FaqDto dto) throws Exception;

    List searchSelectPage(SearchOrderCondition sc)throws Exception;
    int searchResultCnt(SearchOrderCondition sc) throws Exception;

}
