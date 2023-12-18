package com.pofol.admin.order.Service;

import java.util.List;

import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.main.orders.order.domain.OrderDto;

public interface AdminOrderService {
	
	public abstract List<CodeTableDto> selectCodeType(Integer code_type) throws Exception;
	//crud
	public abstract int insert(OrderDto dto) throws Exception;
    public abstract OrderDto select(Long id) throws Exception;
    public abstract int update(OrderDto dto) throws Exception;
	public abstract int delete(Long id) throws Exception;
	
	public abstract List<OrderDto> selectAll() throws Exception;
    public abstract int deleteAll() throws Exception;
    public abstract int count() throws Exception;

}
