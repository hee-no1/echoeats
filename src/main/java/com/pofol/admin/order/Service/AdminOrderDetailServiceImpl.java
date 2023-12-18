package com.pofol.admin.order.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pofol.admin.order.Repository.AdminOrderDetailRepository;
import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.main.orders.order.domain.OrderDetailDto;

@Service
public class AdminOrderDetailServiceImpl implements AdminOrderDetailService {

AdminOrderDetailRepository adminOrderDetailRepo;
	
	@Override
	public List<CodeTableDto> selectCodeType(Integer code_type) throws Exception {
		return adminOrderDetailRepo.selectCodeType(code_type);
	}

	@Override
	public int insert(OrderDetailDto dto) throws Exception {
		return adminOrderDetailRepo.insert(dto);
	}

	@Override
	public OrderDetailDto select(Long id) throws Exception {
		return adminOrderDetailRepo.select(id);
	}

	@Override
	public int update(OrderDetailDto dto) throws Exception {
		return adminOrderDetailRepo.update(dto);
	}

	@Override
	public int delete(Long id) throws Exception {
		return adminOrderDetailRepo.delete(id);
	}

	@Override
	public List<OrderDetailDto> selectAll() throws Exception {
		return adminOrderDetailRepo.selectAll();
	}

	@Override
	public int deleteAll() throws Exception {
		return adminOrderDetailRepo.deleteAll();
	}

	@Override
	public int count() throws Exception {
		return adminOrderDetailRepo.count();
	}
}
