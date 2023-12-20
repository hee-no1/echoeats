package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.domain.OrderHistoryDto;

import java.util.List;

public interface OrderHistoryRepository {
    int insert(OrderHistoryDto orderHistoryDto) throws Exception;
    OrderHistoryDto select(Long ord_hist_id) throws Exception;
    List<OrderHistoryDto> selectList(Long ord_id) throws Exception;
    OrderHistoryDto selectOne(Long ord_id) throws Exception;
    OrderHistoryDto selectMaxByOrdId(Long ord_id) throws Exception;
    int delete(Long ord_hist_id) throws Exception;
    int deleteList(Long ord_id) throws Exception;
    List<OrderHistoryDto> selectAll() throws Exception;
    int deleteAll() throws Exception;
    int count() throws Exception;
}
