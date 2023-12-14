package com.pofol.main.orders.order.repository;

import java.util.List;
import java.util.Map;

import com.pofol.main.orders.order.domain.OrderDto;

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
		public abstract List<OrderDto> selectAllByUserIdAndPeriod(Map map)throws Exception;
		public abstract String selectByOrderMainImg(Long ord_id);
		public abstract OrderDto selectByOrderId(Long ord_id);

}
