package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderDto;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface OrderRepository {
	//crud
		int insert(OrderDto dto) throws Exception;
		int insertAll(OrderDto dto) throws Exception;
	    OrderDto select(Long id) throws Exception;
	    int update(OrderDto dto) throws Exception;
		int updateStatus(OrderDto dto) throws Exception;
		int delete(Long id) throws Exception;
		
		List<OrderDto> selectAll() throws Exception;
	    int deleteAll() throws Exception;
	    int count() throws Exception;

}
