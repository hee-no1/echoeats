//package com.pofol.main;
//
//import static org.junit.jupiter.api.Assertions.assertTrue;
//
//import java.sql.Connection;
//
//import javax.sql.DataSource;
//
//import org.junit.jupiter.api.Test;
//import org.junit.jupiter.api.extension.ExtendWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit.jupiter.SpringExtension;
//
//@ExtendWith(SpringExtension.class) // Junit5
//@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
//public class DBConnectionTest  {
//	@Autowired
//	DataSource ds;
//
//	@Autowired
//	TestDao dao;
//
//	@Test
//	public void test1()throws Exception {
//	    Connection conn = ds.getConnection(); // 데이터베이스의 연결을 얻는다.
//
//	    System.out.println("conn = " + conn);
//	    assertTrue(conn!=null);
//	}
//
//	@Test
//	public void test2()throws Exception {
//	    System.out.println("dao = " + dao);
//	    System.out.println("dao.now() = "+dao.now());
//	    assertTrue(dao.now()!=null);
//	}
//}
