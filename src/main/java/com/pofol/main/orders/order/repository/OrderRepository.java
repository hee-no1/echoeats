package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.order.domain.SearchOrderCondition;

import org.springframework.core.annotation.Order;

import java.util.List;
import java.util.Map;

import com.pofol.main.orders.order.domain.OrderDto;

public interface OrderRepository {
	//crud
		int insert(OrderDto dto) throws Exception;
		int insertAll(OrderDto dto) throws Exception;
	    OrderDto select(Long id) throws Exception;
	    int update(OrderDto dto) throws Exception;
		int updateStatus(OrderDto dto) throws Exception;
		int delete(Long id) throws Exception;
		
		public abstract List<OrderDto> selectAll() throws Exception;
	    public abstract int deleteAll() throws Exception;
	    public abstract int count() throws Exception;
		public abstract List<OrderDto> selectAllByUserIdAndPeriod(Map map)throws Exception;
		public abstract String selectByOrderMainImg(Long ord_id);
		public abstract OrderDto selectByOrderId(Long ord_id);
	    
	    public abstract List searchSelectPage(SearchOrderCondition sc)throws Exception;
	    public abstract int searchResultCnt(SearchOrderCondition sc) throws Exception;

}
