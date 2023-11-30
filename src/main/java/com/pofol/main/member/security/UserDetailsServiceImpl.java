package com.pofol.main.member.security;

import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    MemberService service;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;


    //security-context(Authentication(Userdetails))
    @Override
    public UserDetails loadUserByUsername(String mem_id) throws UsernameNotFoundException {

        //db에서 유저 정보를 가져온다
        MemberDto vo2 = service.select(mem_id);

        if (vo2==null){
            return null;
        }

        //UserDetails 객체 생성 (Authentication에 넣기 위해)
        SecurityUser securityUser = new SecurityUser();
        
        securityUser.setUsername(vo2.getMem_id());
        String pwd = vo2.getMem_pwd();
        pwd = bCryptPasswordEncoder.encode(pwd);
        securityUser.setPassword(pwd);
       // securityUser.setName("AA");

        List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
        grantedAuthorities.add(new SimpleGrantedAuthority(vo2.getRole()));
        securityUser.setAuthorities(grantedAuthorities);


        System.out.println("securityUser = "+securityUser.toString());





        return securityUser;
    }


}





//spring security는 내가 입력한 아이디, 비밀번호와 UserDetails에 담긴 username, password를 비교한다
//같으면 세션에 들어간다

//userdetails를 Authentication에 넣고 , Authentication를 다시 security session에 넣는다

//        Authentication authentication = new UsernamePasswordAuthenticationToken(
//                securityUser,securityUser.getPassword(),securityUser.getAuthorities());
//
//        System.out.println("authentication = " + authentication);
//
//        SecurityContextHolder.getContext().setAuthentication(authentication);