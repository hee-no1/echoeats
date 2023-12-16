package com.pofol.main.board.service;

import com.pofol.main.board.domain.ProQnaDto;

import java.util.List;

public interface ProQnaService {
    public int updateQna(ProQnaDto dto);

    public int deleteQna(ProQnaDto dto);

    public ProQnaDto getQna(ProQnaDto dto);

    public List<ProQnaDto> getQnaList(ProQnaDto dto);
}