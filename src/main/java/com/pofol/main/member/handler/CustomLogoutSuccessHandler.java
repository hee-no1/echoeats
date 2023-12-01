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
import java.io.IOException;
import java.util.Enumeration;

@Component
public class CustomLogoutSuccessHandler extends SimpleUrlLogoutSuccessHandler {

    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
                                Authentication authentication) throws IOException, ServletException {



        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("referer".equals(cookie.getName())) {
                    System.out.println("cookie"+cookie.getValue());
                }
            }
        }

        String referer = request.getHeader("Referer");
        System.out.println("로그아웃 referer : " + referer);
        request.getSession().setAttribute("lastUrl", referer);

        Enumeration<String> attributeNames = request.getSession().getAttributeNames();
        while(attributeNames.hasMoreElements()){
            String a = attributeNames.nextElement();
            System.out.println("로그아웃 세션 확인 : "+ a + "  :   "+ request.getSession().getAttribute(a));
        }

        if(referer==null){
            response.sendRedirect("/member/login_form");
        }

        response.sendRedirect(referer);
    }

}
