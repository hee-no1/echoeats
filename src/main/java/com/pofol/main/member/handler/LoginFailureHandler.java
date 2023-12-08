package com.pofol.main.member.handler;

import org.springframework.security.authentication.*;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Component
public class LoginFailureHandler implements AuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {

        String errormsg = null;

        //비밀번호 불일치
        //존재하지 않는 아이디
        if (exception instanceof BadCredentialsException || exception instanceof InternalAuthenticationServiceException) {
            errormsg = "아이디 또는 비밀번호를 잘못 입력했습니다.";
        }  else {
            errormsg = "확인된 에러가 없습니다.";
        }

        request.getSession().setAttribute("errormsg", errormsg);


        response.sendRedirect("/member/login_form");

    }


}




//else if (exception instanceof UsernameNotFoundException) {
//        errormsg = "계정없음";
//        } else if (exception instanceof AccountExpiredException) {
//        errormsg = "계정만료";
//        } else if (exception instanceof CredentialsExpiredException) {
//        errormsg = "비밀번호만료";
//        } else if (exception instanceof DisabledException) {
//        errormsg = "계정비활성화";
//        } else if (exception instanceof LockedException) {
//        errormsg = "계정잠김";
//        }








