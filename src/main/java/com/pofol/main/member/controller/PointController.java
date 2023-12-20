package com.pofol.main.member.controller;

import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.dto.PointDto;
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

import java.util.List;

@Controller
@RequestMapping("/point")
public class PointController {
    @Autowired
    PointService pointService;
    @Autowired
    MemberService memberService;

    //포인트 내역 페이지
    @GetMapping("/all")
    public String point(Model m) throws Exception {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String mem_id = authentication.getName();
        //멤버 보내주기
//        MemberDto memberDto = memberService.select(authentication.getName());
//        m.addAttribute("memberDto",memberDto);
        //적립금 보내주기
        List<PointDto> pointDtos = pointService.getAllPoint(mem_id);
        m.addAttribute("list",pointDtos);
        int sumPoint = pointService.getSumPoint(mem_id);
        int availablePoint = pointService.getAvailablePoint(mem_id);
        int countPoint = pointService.getCountPoint(mem_id);
        Integer preExtinctPoint = pointService.getPreExtinctPoint(mem_id);
        m.addAttribute("sum",sumPoint);
        m.addAttribute("available",availablePoint);
        m.addAttribute("count",countPoint);
        m.addAttribute("preExtinct",preExtinctPoint);
        return "member/point_form";
    }


}
