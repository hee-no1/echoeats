package com.pofol.main.orders.order.service;

import com.pofol.main.orders.order.domain.OrderHistoryDto;

import java.util.List;
import java.util.Map;

public interface OrderHistoryService {
    List<OrderHistoryDto> selectFinalOrderHistory(Map map);
}
