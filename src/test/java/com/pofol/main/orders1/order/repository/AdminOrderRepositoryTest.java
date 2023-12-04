package com.pofol.main.orders1.order.repository;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.pofol.main.orders1.order.admin.AdminOrderRepository;
import com.pofol.main.orders1.order.domain.CodeTableDto;
import com.pofol.main.orders1.order.domain.OrderDto;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class AdminOrderRepositoryTest {
	@Autowired
	DataSource ds;
	
	@Autowired
	AdminOrderRepository adminOrderRpo;
	
	@Test
	public void selectOptionTest() throws Exception {
		List<CodeTableDto> list= adminOrderRpo.selectCodeType(101);
		int i=0;
		for(CodeTableDto dto : list) {
			System.out.println(++i+" = "+dto);
			assertTrue(dto.getCode_type()==101);
		}
	}
	
	
}
