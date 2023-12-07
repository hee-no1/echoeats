package com.pofol.main.member;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.sql.Connection;

import javax.sql.DataSource;


import com.pofol.main.member.repository.MemberRepository;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.MemberService;
import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class memberTest {

	@Autowired
	DataSource ds;

    @Autowired
    SqlSession session;


	@Autowired
	MemberRepository Mdao;

	@Autowired
	MemberService service;


	@Test
	public void test(){
		System.out.println(ds);
		System.out.println(session);
	}

	@Test
	public void test3() throws Exception {
		MemberDto exampleMemId = Mdao.selectMember("admin123");
		System.out.println(exampleMemId.toString());
	}

	@Test
	public void test4() throws Exception {
		MemberDto exampleMemId = service.select("sample_member_id");
		System.out.println(exampleMemId.toString());
	}



}
