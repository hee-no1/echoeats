package com.pofol.main.member;

import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.repository.MemberRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MemberServiceImplTest {

    @Autowired
    MemberRepository memberRepository;
//    @Test
//    public void signin() throws Exception {
//        MemberDto memberDto = new MemberDto("asdfasdfqs","asdf","Doe","asdf@naver.com","01030359787","상남자","1998/10/12","종각역","Y","a","a","asdfasdfqs","asdfasdfqs","asdfasdfqs","asdfasdfqs","a","a");
//       int result = memberRepository.insertMember(memberDto);
//       assertTrue(result ==1);
//    }
}