package com.pofol.main.member.controller;

import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.repository.MemberRepository;
import com.pofol.main.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    MemberService memberService;
    @Autowired
    MemberRepository memberRepository;

    @RequestMapping(value = "/login_form", method = RequestMethod.GET)
    public String loginGET(HttpServletRequest request, Model model, Authentication authentication) {
        //만약 인증이 되어 있는 회원이면 이전에 왔던 곳에서 리다이렉트
        //1. 인증된 회원과 익명사용자의 Authentication을 확인
        System.out.println("로그인GET : " + authentication);
        if (authentication != null) {
            //model.addAttribute("msg","이미 인증된 회원입니다");
            String referer = request.getHeader("Referer"); //login_form
            System.out.println(referer);
            return "redirect:" + (referer != null ? referer : "/member/info");
        }

        return "member/login_form";
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String userGET() {
        return "member/user";
    }

    @GetMapping("/admin")
    public @ResponseBody String admin() {
        System.out.println("어드민 진입");
        return "admin";
    }


    @GetMapping(value = "/info", produces = "text/plain; charset=UTF-8")
    public @ResponseBody String info(HttpServletRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object a = authentication.getPrincipal();
        HttpSession session = request.getSession();
        Object greeting = session.getAttribute("greeting");
        return a.toString() + "     " + greeting + "    한글 테스트";
    }


    @GetMapping("/triggerException")
    public String triggerException() throws Exception {
        // 예외를 발생시키는 코드
        throw new Exception("This is a simulated exception.");
    }

    @GetMapping("/logout")
    public void logout(HttpServletRequest request, HttpServletResponse response) {
        String referer = request.getHeader("Referer");
        System.out.println("컨트롤러 referer : " + referer);
    }
    @GetMapping("/join")
    public String memberJoin() {
        return "member/join_form";
    }

    //회원가입
    @PostMapping("/join")
    @ResponseBody
    public MemberDto join(@RequestBody MemberDto memberDto) throws Exception{
        memberService.signin(memberDto);
        return memberDto;
    }

    //아이디체크
    @GetMapping("/checkId")
    @ResponseBody
    public int idCheck(String mem_id) throws Exception {
        if(mem_id == null || mem_id.isEmpty()){
            return -1;
        } else {
            System.out.println(mem_id);
            System.out.println(memberRepository.checkId(mem_id));
            return memberRepository.checkId(mem_id);}
    }
    //이메일 체크
    @GetMapping("/checkEmail")
    @ResponseBody
    public int emailCheck(String mem_email) throws Exception {
        if(mem_email == null || mem_email.isEmpty()){
            return -1;
        } else {
            System.out.println(mem_email);
            System.out.println(memberRepository.checkEmail(mem_email));
            return memberRepository.checkEmail(mem_email);
        }
    }
}

