package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderDetailDto;

import java.util.List;

public interface OrderDetailRepository {
    int insert(OrderDetailDto orderDetailDto) throws Exception;
    OrderDetailDto select(Long ord_det_id) throws Exception;
    List<OrderDetailDto> selectList(Long ord_id) throws Exception;
    int updateStatus(OrderDetailDto orderDetailDto) throws Exception;
    int delete(Long ord_det_id) throws Exception;
    List<OrderDetailDto> selectAll() throws Exception;
    int deleteAll() throws Exception;
    int count() throws Exception;


}
