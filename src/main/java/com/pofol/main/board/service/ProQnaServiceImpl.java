package com.pofol.main.board.service;

import com.pofol.main.board.domain.ProQnaDto;
import com.pofol.main.board.repository.ProQnaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProQnaServiceImpl implements ProQnaService {
    @Autowired
    private ProQnaRepository proQnaRepository;

    // 문의 수정
    public int updateQna(ProQnaDto dto) {
        return proQnaRepository.updateQna(dto);
    }
    // 문의 삭제
    public int deleteQna(ProQnaDto dto) {
        return proQnaRepository.deleteQna(dto);
    }
    // 문의 상세조회
    public ProQnaDto getQna(ProQnaDto dto) {
        return proQnaRepository.getQna(dto);
    }
    // 문의 조회
    public List<ProQnaDto> getQnaList(ProQnaDto dto) {
        return proQnaRepository.getQnaList(dto);
    }
}
