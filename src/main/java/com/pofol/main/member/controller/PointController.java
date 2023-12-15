package com.pofol.main.member.controller;

import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.MemberService;
import com.pofol.main.member.service.PointService;
import org.apache.taglibs.standard.extra.spath.Step;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/point")
public class PointController {
    @Autowired
    PointService pointService;
    @Autowired
    MemberService memberService;

    //포인트 내역 페이지
    @GetMapping("/")
    public String point(Model m) throws Exception {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        MemberDto memberDto = memberService.select(authentication.getName());
        m.addAttribute("memberDto",memberDto);
        return "member/point_form";
    }
}
