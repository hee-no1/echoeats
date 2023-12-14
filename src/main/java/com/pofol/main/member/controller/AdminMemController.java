package com.pofol.main.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin4")
public class AdminMemController {

    @GetMapping("/member")
    public String manage(){
        return "admin/member/mem_manage";
    }
}
