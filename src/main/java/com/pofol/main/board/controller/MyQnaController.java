package com.pofol.main.board.controller;

import com.pofol.main.board.domain.MyQnaDto;
import com.pofol.main.board.service.MyQnaService;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

// 로그인 정보 받아야함,,
@Controller
@RequestMapping("/mypage")
public class MyQnaController {
    @Autowired
    MyQnaService myQnaService;

    @Autowired
    MemberService memberService;

    @RequestMapping("/myqna")
    public String pro_qna() {
        return "/board/myQna";
    }

    // ajax로 상품문의목록 받아오기
    @ResponseBody
    @RequestMapping("/getMyQna")
    public List<MyQnaDto> getMyQna(@RequestBody MemberDto dto, Model m) throws Exception {
        MemberDto loginMember = memberService.select(dto.getMem_id());
        m.addAttribute("loginMember", loginMember);
        return myQnaService.getMyQna(dto);
    }
}
