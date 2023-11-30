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

        if (exception instanceof BadCredentialsException) {
            errormsg = "비밀번호불일치";
        }else if (exception instanceof InternalAuthenticationServiceException) {
            errormsg = "존재하지 않는 아이디입니다.";
        }else if (exception instanceof UsernameNotFoundException) {
            errormsg = "계정없음";
        } else if (exception instanceof AccountExpiredException) {
            errormsg = "계정만료";
        } else if (exception instanceof CredentialsExpiredException) {
            errormsg = "비밀번호만료";
        } else if (exception instanceof DisabledException) {
            errormsg = "계정비활성화";
        } else if (exception instanceof LockedException) {
            errormsg = "계정잠김";
        }else {
            errormsg = "확인된 에러가 없습니다.";
        }

        request.setAttribute("errormsg", errormsg);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/member/login_form");
        dispatcher.forward(request, response);

        //response.sendRedirect("/member/login_form");

    }







}













