package com.pofol.main.board.service;

import com.pofol.main.board.domain.MyQnaDto;
import com.pofol.main.board.repository.MyQnaRepositoryImpl;
import com.pofol.main.member.dto.MemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyQnaServiceImpl implements MyQnaService {
    @Autowired
    MyQnaRepositoryImpl myQnaRepository;

    @Override
    public List<MyQnaDto> getMyQna(MemberDto dto) {
        return myQnaRepository.getMyQna(dto);
    }
}
