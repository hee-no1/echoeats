package com.pofol.main.orders1.order.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pofol.main.orders1.order.domain.OrderDto;
import com.pofol.main.orders1.order.domain.SearchOrderCondition;

@Repository
public class OrderRepository1Impl implements OrderRepository1 {

	@Autowired
	private SqlSession session;
	private static String namespace = "order.repository.orderMapper.";

	@Override
	public int insert(OrderDto dto) throws Exception {
		return session.insert(namespace + "insert", dto);
	}

	@Override
	public int insertAll(OrderDto dto) throws Exception {
		return session.insert(namespace + "insertAll", dto);
	}
	
	@Override
	public OrderDto select(Long ord_id) throws Exception {
		return session.selectOne(namespace + "select", ord_id);
	}

	@Override
	public int update(OrderDto dto) throws Exception {
		return session.update(namespace + "update", dto);
	}// updateStatus

	@Override
	public int delete(Long ord_id) throws Exception {
		return session.delete(namespace + "delete", ord_id);
	}

	@Override
	public List<OrderDto> selectAll() throws Exception {
		return session.selectList(namespace + "selectAll");
	}

	@Override
	public int deleteAll() throws Exception {
		return session.delete(namespace + "deleteAll");
	}

	@Override
	public int count() throws Exception {
		return session.selectOne(namespace + "count");
	}
	@Override
	public List searchSelectPage(SearchOrderCondition sc) throws Exception {
		return session.selectList(namespace+"searchSelectPage", sc);
	}
	
	@Override
	public int searchResultCnt(SearchOrderCondition sc) throws Exception {
		return session.selectOne(namespace+"searchResultCnt", sc);
	}
}
