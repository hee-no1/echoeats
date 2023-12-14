package com.pofol.main.member.service;

import com.pofol.main.member.dto.DelNotesDto;
import com.pofol.main.member.repository.DelNotesRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DelNotesServiceImpl implements  DelNotesService{

    private final DelNotesRepository delNotesRepository;

    @Override
    public void writeDelNotes(DelNotesDto dto) {
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        String mem_id = authentication.getName(); //회원id
        String mem_id = "you11";
        try {
            DelNotesDto delNotesDto = delNotesRepository.select_delNotes(mem_id);
            System.out.println("select: "+delNotesDto);
            if(delNotesDto == null){ // 이미 delNotes 테이블에 정보가 들어가 있는 경우
                dto.setMem_id(mem_id);
                dto.setRg_num(mem_id);
                dto.setMd_num(mem_id);
                delNotesRepository.insert_delNotes(dto);
            } else { // delNotes 데이블에 정보가 없는 경우
                dto.setMem_id(mem_id);
                delNotesRepository.update_delNotes(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    @Override
    public DelNotesDto getDelNotes() {
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        String mem_id = authentication.getName(); //회원id

        String mem_id = "you11";
        DelNotesDto delNotesDto;
        try {
            delNotesDto = delNotesRepository.select_delNotes(mem_id);
            System.out.println(delNotesDto);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        System.out.println("getNotes: "+delNotesDto);
        return delNotesDto;
    }


}
