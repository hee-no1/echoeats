package com.pofol.main.orders.inquiry.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class InquiryController {
	@GetMapping("/inquiry/form")
    public String inquiryForm(Model m, HttpServletRequest request){
		System.out.println("inquiryForm");
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "/order/mypageInquiry";
    }
}
