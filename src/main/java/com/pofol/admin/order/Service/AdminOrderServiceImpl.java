package com.pofol.admin.order.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pofol.admin.order.Repository.AdminOrderRepository;
import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.main.orders.order.domain.OrderDto;
@Service
public class AdminOrderServiceImpl implements AdminOrderService {

	AdminOrderRepository adminOrderRepo;
	
	@Override
	public List<CodeTableDto> selectCodeType(Integer code_type) throws Exception {
		return adminOrderRepo.selectCodeType(code_type);
	}

	@Override
	public int insert(OrderDto dto) throws Exception {
		return adminOrderRepo.insert(dto);
	}

	@Override
	public OrderDto select(Long id) throws Exception {
		return adminOrderRepo.select(id);
	}

	@Override
	public int update(OrderDto dto) throws Exception {
		return adminOrderRepo.update(dto);
	}

	@Override
	public int delete(Long id) throws Exception {
		return adminOrderRepo.delete(id);
	}

	@Override
	public List<OrderDto> selectAll() throws Exception {
		return adminOrderRepo.selectAll();
	}

	@Override
	public int deleteAll() throws Exception {
		return adminOrderRepo.deleteAll();
	}

	@Override
	public int count() throws Exception {
		return adminOrderRepo.count();
	}

}
