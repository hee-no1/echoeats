package com.pofol.main.member.handler;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;

@Component
public class CustomLogoutSuccessHandler extends SimpleUrlLogoutSuccessHandler {

    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
                                Authentication authentication) throws IOException, ServletException {



        String referer = request.getHeader("Referer");
        System.out.println("로그아웃 referer : " + referer);
       // request.getSession().setAttribute("SPRING_SECURITY_SAVED_REQUEST", referer);



        if(referer == null || referer.equals("http://localhost:8080/member/login_form")){
            referer ="http://localhost:8080/main";
        }
        setDefaultTargetUrl(referer);
        super.onLogoutSuccess(request, response, authentication);
    }

}
