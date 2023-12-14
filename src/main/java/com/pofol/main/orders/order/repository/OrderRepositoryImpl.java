package com.pofol.main.orders.order.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pofol.main.orders.order.domain.OrderDto;

@Repository
public class OrderRepositoryImpl implements OrderRepository {

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
	public List<OrderDto> selectAllByUserIdAndPeriod(Map map) throws Exception {
		return session.selectList(namespace + "selectAllByUserIdAndPeriod", map);
	}

	@Override
	public String selectByOrderMainImg(Long ord_id) {
		return session.selectOne(namespace + "selectByOrderMainImg", ord_id);
	}

	@Override
	public OrderDto selectByOrderId(Long ord_id) {
		return session.selectOne(namespace + "selectByOrderId", ord_id);
	}

}
