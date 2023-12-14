package com.pofol.main.member.service;

import com.pofol.main.member.dto.DelNotesDto;

public interface DelNotesService {
    void writeDelNotes(DelNotesDto dto);
    DelNotesDto getDelNotes();
}
