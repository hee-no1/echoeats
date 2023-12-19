package com.pofol.admin.order.Service;

import java.util.List;

import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.main.orders.order.domain.OrderDetailDto;

public interface AdminOrderDetailService {
	
	public abstract List<CodeTableDto> selectCodeType(Integer code_type) throws Exception;
	//crud
	public abstract int insert(OrderDetailDto dto) throws Exception;
    public abstract OrderDetailDto select(Long id) throws Exception;
    public abstract int update(OrderDetailDto dto) throws Exception;
	public abstract int delete(Long id) throws Exception;
	
	public abstract List<OrderDetailDto> selectAll() throws Exception;
    public abstract int deleteAll() throws Exception;
    public abstract int count() throws Exception;

}
