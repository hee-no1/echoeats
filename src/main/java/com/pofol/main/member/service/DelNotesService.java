package com.pofol.main.member.service;

import com.pofol.main.member.dto.DelNotesDto;

public interface DelNotesService {
    int insert_delNotes(DelNotesDto dto);
    int update_delNotes(DelNotesDto dto);
    DelNotesDto select_delNotes(String id);
}
