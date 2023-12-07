package com.pofol.main.member.repository;

import com.pofol.main.member.dto.GradeDto;

import java.util.List;

public interface GradeRepository {
    GradeDto select_grade(String id);
    List<GradeDto> select_grade_list();
}
