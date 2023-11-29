//package com.pofol.main.member;
//
//import static org.junit.jupiter.api.Assertions.assertTrue;
//
//import java.sql.Connection;
//
//import javax.sql.DataSource;
//
//import com.pofol.main.TestDao;
//import com.pofol.main.member.repository.MemberRepository;
//import com.pofol.main.member.dto.MemberDto;
//import com.pofol.main.member.service.MemberService;
//import org.junit.jupiter.api.Test;
//import org.junit.jupiter.api.extension.ExtendWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit.jupiter.SpringExtension;
//
//@ExtendWith(SpringExtension.class) // Junit5
//@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
//public class memberTest {
//	@Autowired
//	DataSource ds;
//
//
//
//	@Autowired
//	MemberRepository Mdao;
//
//	@Autowired
//	MemberService service;
//
//
//
//	@Test
//	public void test3(){
//		MemberDto exampleMemId = Mdao.select_member("example_mem_id");
//		System.out.println(exampleMemId.toString());
//	}
//
//	@Test
//	public void test4(){
//		MemberDto exampleMemId = service.select("example_mem_id");
//		System.out.println(exampleMemId.toString());
//	}
//
//
//
//}
