package com.pofol.main.orders1.order.repository;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.order.repository.OrderDetailRepository;
import com.pofol.main.orders.order.repository.OrderRepository;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class OrderRepository1Test {
	@Autowired
	DataSource ds;

	@Autowired
	OrderRepository dao;
	@Autowired
	OrderDetailRepository ordDetRpo;
	
	@BeforeEach  
	public void init() throws Exception{
		// delete all
//		dao.deleteAll();
//		assertTrue(dao.count() == 0);
    }
	
//	@Test
//	public void selectOptionTest() throws Exception {
//		// insert
//		for(int i=1; i<=100; i++) {
//			OrderDto dto = new OrderDto("you11", "Product"+i, 100, 100, 0, 0, 1, "card", "you11");
//			LocalDate currentDate = LocalDate.now().plusDays(-i);
//			Date orderDate = java.sql.Date.valueOf(currentDate);
//			dto.setOrd_date(orderDate);
//			assertTrue(dao.insertAll(dto) == 1);
//		}
//		//assertTrue(dao.count() == 100);
//	}
	
	@Test
	public void orderSelectAllByUserIdTest() throws Exception {
		Map map = new HashMap();
        map.put("id", "test");
        map.put("period", 90);
		List<OrderDto> list = dao.selectAllByUserIdAndPeriod(map);
		// insert
		if(!list.isEmpty()) {
			for(OrderDto dto : list) {
				System.out.println(dto);
			}
		}
		//assertTrue(dao.count() == 100);
	}
	
//	@Test
//	public void orderDetInsertTest() throws Exception {
//		OrderDto dto = dao.selectAll().get(0);
//		// insert
//		//(Long ord_id, String mem_id, Long prod_id, String opt_prod_id, String code_name, String prod_name, Integer prod_qty, Integer prod_tot_price, String pack_type, String rg_num, String md_num)
//		OrderDetailDto ordDetDto1 = new OrderDetailDto(dto.getOrd_id(), "you11", 1L, null, "DELIVERY_COMPLETE", "test1", 1, 10000, "냉장", "you11", "you11");
//		OrderDetailDto ordDetDto2 = new OrderDetailDto(dto.getOrd_id(), "you11", 2L, null, "DELIVERY_COMPLETE", "test2", 2, 20000, "냉장", "you11", "you11");
//		OrderDetailDto ordDetDto3 = new OrderDetailDto(dto.getOrd_id(), "you11", 3L, null, "DELIVERY_COMPLETE", "test3", 3, 30000, "냉장", "you11", "you11");
//		System.out.println(ordDetDto1);
//		assertTrue( ordDetRpo.insert(ordDetDto1)==1 );
//		assertTrue( ordDetRpo.insert(ordDetDto2)==1 );
//		assertTrue( ordDetRpo.insert(ordDetDto3)==1 );
//		//assertTrue(dao.count() == 100);
//	}
	
//	@Test
//	public void insertTest() throws Exception {
//		// insert
//		OrderDto dto = new OrderDto("you11", "Product1", 100, 100, 0, 0, 1, "Credit Card", "you11");
//		System.out.println(dto);
//		assertTrue(dao.insert(dto) == 1);
//		dto = new OrderDto("you11", "Product2", 100, 100, 0, 0, 1, "Credit Card", "you11");
//		assertTrue(dao.insert(dto) == 1);
//		assertTrue(dao.count() == 2);
//	}
//	
//	@Test
//	public void selectTest() throws Exception {
//		OrderDto dto = new OrderDto("you11", "Product1", 100, 100, 0, 0, 1, "Credit Card", "you11");
//		assertTrue(dao.insert(dto) == 1);
//		
//		Long ordId = dto.getOrd_id();
//		dto.setOrd_id(ordId);
//		OrderDto dto2 = dao.select(ordId);
//		System.out.println("dto2 = "+dto2);
//		assertTrue(dto.equals(dto2));
//	}
//	
//	@Test
//	public void updateTest() throws Exception {
//		// insert
//		OrderDto dto = new OrderDto("you11", "Product1", 100, 100, 0, 0, 1, "Credit Card", "you11");
//		assertTrue(dao.insert(dto) == 1);
//		//update
//		Long ordId = dto.getOrd_id();
//		dto.setOrd_id(ordId);
//		OrderDto dto2 = dao.select(ordId);
//		dto2.setTot_prod_name("ProdTEST1");
//		assertTrue(dao.update(dto2) == 1);
//		OrderDto dto3 = dao.select(dto.getOrd_id());
//		assertTrue(dto2.equals(dto3));
//	}
//	
//	@Test
//    public void deleteTest() throws Exception {
//		OrderDto dto = new OrderDto("you11", "Product1", 100, 100, 0, 0, 1, "Credit Card", "you11");
//		assertTrue(dao.insert(dto) == 1);
//		Long ordId = dto.getOrd_id();
//		dto.setOrd_id(ordId);
//		
//		OrderDto dto2 = new OrderDto("you11", "Product2", 100, 100, 0, 0, 1, "Credit Card", "you11");
//		assertTrue(dao.insert(dto2) == 1);
//		assertTrue(dao.count() == 2);
//		
//		assertTrue(dao.delete(dto.getOrd_id())==1);
//		assertTrue(dao.count() == 1);
//	}
}
