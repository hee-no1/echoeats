package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderDto;

import java.util.List;

public interface OrderRepository {
	//crud
		public abstract int insert(OrderDto dto) throws Exception;
		public abstract int insertAll(OrderDto dto) throws Exception;
	    public abstract OrderDto select(Long id) throws Exception;
	    public abstract int update(OrderDto dto) throws Exception;
		public abstract int delete(Long id) throws Exception;
		
		public abstract List<OrderDto> selectAll() throws Exception;
	    public abstract int deleteAll() throws Exception;
	    public abstract int count() throws Exception;

}
