package com.pofol.main.member.repository;

import com.pofol.main.member.dto.DelNotesDto;

public interface DelNotesRepository {
    int insert_delNotes(DelNotesDto dto) throws Exception;
    int update_delNotes(DelNotesDto dto) throws Exception;
    DelNotesDto select_delNotes(String mem_id) throws Exception;
}
