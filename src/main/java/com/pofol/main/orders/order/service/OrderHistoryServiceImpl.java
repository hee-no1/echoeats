package com.pofol.main.orders.order.service;

import com.pofol.main.orders.order.domain.OrderHistoryDto;
import com.pofol.main.orders.order.repository.OrderHistoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class OrderHistoryServiceImpl implements OrderHistoryService{

    private final OrderHistoryRepository orderHistoryRepository;


    @Override
    public List<OrderHistoryDto> selectFinalOrderHistory(Map map) {
        try {
            return orderHistoryRepository.selectFinalOrderHistory(map);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
