package com.pofol.main.member.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {





	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	


	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET(){
		return "login";
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
	public @ResponseBody String home(){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
       Object a = authentication.getPrincipal();
		return a.toString();
	}



	
}
