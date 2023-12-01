package com.pofol.main.board.service;

import com.pofol.main.board.domain.FaqDto;

import java.util.List;

public interface FaqService {
    int insertFaq(FaqDto dto);
    int updateFaq(FaqDto dto);
    int deleteFaq(FaqDto dto);
    FaqDto selectFaq(FaqDto dto);
    List<FaqDto> selectAllFaq(FaqDto dto);

}
