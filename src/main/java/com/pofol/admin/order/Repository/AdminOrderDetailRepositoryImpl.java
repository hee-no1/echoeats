package com.pofol.admin.order.Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.main.orders.order.domain.OrderDetailDto;

@Repository
public class AdminOrderDetailRepositoryImpl implements AdminOrderDetailRepository {

	@Autowired
	private SqlSession session;
	private static String namespace = "order.repository.adminOrderDetailMapper.";
	
	@Override
	public List<CodeTableDto> selectCodeType(Integer code_type) throws Exception{
		return session.selectList(namespace + "selectCodeType", code_type);
	}
	
	@Override
	public int insert(OrderDetailDto dto) throws Exception {
		return session.insert(namespace + "insert", dto);
	}

	@Override
	public OrderDetailDto select(Long ord_id) throws Exception {
		return session.selectOne(namespace + "select", ord_id);
	}

	@Override
	public int update(OrderDetailDto dto) throws Exception {
		return session.update(namespace + "update", dto);
	}// updateStatus

	@Override
	public int delete(Long ord_id) throws Exception {
		return session.delete(namespace + "delete", ord_id);
	}

	@Override
	public List<OrderDetailDto> selectAll() throws Exception {
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
}
