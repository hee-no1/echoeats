package com.pofol.main.board.service;

import com.pofol.main.board.domain.MyQnaDto;
import com.pofol.main.member.dto.MemberDto;

import java.util.List;

public interface MyQnaService {
    List<MyQnaDto> getMyQna(MemberDto dto);

}
