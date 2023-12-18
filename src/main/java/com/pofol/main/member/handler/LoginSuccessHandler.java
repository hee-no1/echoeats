package com.pofol.main.member.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {

        System.out.println("---------------LoginSuccessHandler---------------");


        //가로챈 주소를 보유
        //사용자가 직접url로 /member/admin을 입력했을 때 필요

        RequestCache requestCache = new HttpSessionRequestCache();
        SavedRequest savedRequest = requestCache.getRequest(request, response);
        System.out.println(savedRequest);


        //현재 세션값 확인
        Enumeration<String> list = request.getSession().getAttributeNames();
        while(list.hasMoreElements()){
            String a= list.nextElement();
            System.out.println("세션 Attribute 확인 : "+a+" : "+ request.getSession().getAttribute(a));

        }

        HttpSession session = request.getSession();
        String referer = (String) session.getAttribute("referer");
        session.removeAttribute("referer");
        System.out.println("referer : "+ referer);

        //refer이 있다 = 정상적인(버튼을 클릭해서) 루트로 왔다
        //refer이 없다 = url로 진입
        //savedRequest는 가로챘을 때만 가지고 있다
        if(referer != null){
            //로그인버튼 2번 누르고 카카오 로그인
            if (referer.equals("http://localhost:8080/member/login_form")){
                referer ="http://localhost:8080/main";
            }
            response.sendRedirect(referer);
        }else{
            response.sendRedirect(savedRequest.getRedirectUrl());
            //얘는 사용자가 직접 /member/admin을 입력했을 때 필요
            //이 때는 referer가 null이고, savedRequest가 가로챈 주소를 가지고 있다
        }
    }


}



//    // IP, 세션 ID
//    WebAuthenticationDetails web = (WebAuthenticationDetails) authentication.getDetails();
//        System.out.println("IP : " + web.getRemoteAddress());
//                System.out.println("Session ID : " + web.getSessionId());
//
//                // 인증 ID
//                System.out.println("name : " + authentication.getName());
//
//                // 권한 리스트
//                List<GrantedAuthority> authList = (List<GrantedAuthority>) authentication.getAuthorities();
//        System.out.print("권한 : ");
//        for (int i = 0; i < authList.size(); i++) {
//        System.out.print(authList.get(i).getAuthority() + " ");
//        }
//        System.out.println();