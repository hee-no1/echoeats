package com.pofol.main.member.service;

import com.pofol.main.member.dto.DelNotesDto;
import com.pofol.main.member.repository.DelNotesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DelNotesServiceImpl implements  DelNotesService{

    @Autowired
    DelNotesRepository delNotesRepository;
    @Override
    public int insert_delNotes(DelNotesDto dto) {
        return delNotesRepository.insert_delNotes(dto);
    }

    @Override
    public int update_delNotes(DelNotesDto dto) {
        return delNotesRepository.update_delNotes(dto);
    }

    @Override
    public DelNotesDto select_delNotes(String id) {
        return delNotesRepository.select_delNotes(id);
    }
}
