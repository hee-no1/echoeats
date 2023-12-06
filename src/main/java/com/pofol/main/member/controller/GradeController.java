package com.pofol.main.member.controller;

import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class GradeController {

    @Autowired
    GradeService gradeService;

    @GetMapping("/grade")
    public String gradeJoin(Model model) {
        List<GradeDto> gradeDtos = gradeService.show_list();
        model.addAttribute("grade", gradeDtos);
        return "member/grade";
    }

    @GetMapping("/grade_data")
    @ResponseBody
    public String boardAjax() {
        GradeDto user123 = gradeService.show_grade("user123");
        System.out.println(user123);
        return user123.getGd_name();
    }

}
