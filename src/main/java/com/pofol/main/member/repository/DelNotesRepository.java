package com.pofol.main.member.repository;

import com.pofol.main.member.dto.DelNotesDto;

public interface DelNotesRepository {
    int insert_delNotes(DelNotesDto dto) ;
    int update_delNotes(DelNotesDto dto);
    DelNotesDto select_delNotes(String mem_id);
}
