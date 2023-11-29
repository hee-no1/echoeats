package com.pofol.main.member.handler;

import org.springframework.security.authentication.*;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;


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

        if (exception instanceof BadCredentialsException) {
            errormsg = "비밀번호불일치";
        }else if (exception instanceof InternalAuthenticationServiceException) {
            errormsg = "존재하지 않는 아이디입니다.";
        }  else {
            errormsg = "확인된 에러가 없습니다.";
        }

        request.setAttribute("errormsg", errormsg);
        System.out.println(errormsg);
        response.sendRedirect("/login");

    }







}














//else if (exception instanceof UsernameNotFoundException) {
//        return "계정없음";
//        } else if (exception instanceof AccountExpiredException) {
//        return "계정만료";
//        } else if (exception instanceof CredentialsExpiredException) {
//        return "비밀번호만료";
//        } else if (exception instanceof DisabledException) {
//        return "계정비활성화";
//        } else if (exception instanceof LockedException) {
//        return "계정잠김";
//        }