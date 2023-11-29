package com.pofol.main.member.controller;


import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/member")
public class MemberController {

	@RequestMapping(value = "/login_form", method = RequestMethod.GET)
	public String loginGET(){
		return "member/login_form";
	}

	@GetMapping("/admin")
	public @ResponseBody String admin(){
		return "admin";
	}

	@GetMapping("/user")
	public @ResponseBody String user(){
		return "user";
	}

	@GetMapping("/info")
	public @ResponseBody String info(){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
       Object a = authentication.getPrincipal();
		return a.toString();
	}


	@GetMapping("/triggerException")
	public String triggerException() throws Exception {
		// 예외를 발생시키는 코드
		throw new Exception("This is a simulated exception.");
	}


	
}
