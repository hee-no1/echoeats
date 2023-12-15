package com.pofol.main.member.handler;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class MyAccessDeniedHandler implements AccessDeniedHandler {
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException e) throws IOException, ServletException {

        System.out.println("AccessDeniedHandler 진입");

        String referer = request.getHeader("Referer");
        System.out.println("Referer : "+referer);

        //url로 입력했을 때 referer는 null
        if(referer == null){
            referer="/main";
        }

        response.sendRedirect(referer);
    }

}




//// 사용자의 역할에 따라 거부된 URL
//        if(request.isUserInRole("ADMIN")){
//                //만약 admin권한을 가진 유저가 거부되었다면
//                }