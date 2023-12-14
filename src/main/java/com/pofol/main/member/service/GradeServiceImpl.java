package com.pofol.main.member.service;

import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.repository.GradeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GradeServiceImpl implements GradeService {

    @Autowired
    GradeRepository gradeRepository;

    @Override
    public GradeDto show_grade(String id) {
        return gradeRepository.select_grade(id);
    }

    @Override
    public List<GradeDto> show_list() {
        return gradeRepository.select_grade_list();
    }
}
