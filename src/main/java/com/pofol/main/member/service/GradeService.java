package com.pofol.main.member.service;

import com.pofol.main.member.dto.GradeDto;

import java.util.List;

public interface GradeService {
    GradeDto show_grade(String id);
    List<GradeDto> show_list();
}
