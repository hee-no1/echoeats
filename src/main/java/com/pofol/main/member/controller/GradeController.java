package com.pofol.main.member.controller;

import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("id", authentication.getName());
        model.addAttribute("grade", gradeDtos);
        return "member/grade";
    }

    @GetMapping("/grade_data")
    @ResponseBody
    public GradeDto boardAjax(String id) {
        System.out.println(id);
        GradeDto user123 = gradeService.show_grade(id);
        System.out.println(user123);
        return user123;
    }




}
