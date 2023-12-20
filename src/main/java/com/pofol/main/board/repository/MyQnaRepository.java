package com.pofol.main.board.repository;

import com.pofol.main.board.domain.MyQnaDto;
import com.pofol.main.member.dto.MemberDto;

import java.util.List;

public interface MyQnaRepository {
    List<MyQnaDto> getMyQna(MemberDto dto) throws Exception;

}
