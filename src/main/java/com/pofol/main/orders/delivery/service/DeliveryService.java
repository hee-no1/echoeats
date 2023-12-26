package com.pofol.main.orders.delivery.service;

import com.pofol.main.orders.delivery.domain.DeliveryDto;
import com.pofol.main.orders.delivery.domain.SearchDeliveryCondition;
import com.pofol.main.orders.order.domain.OrderDetailDto;

import java.util.List;

public interface DeliveryService {
    void writeDelivery(List<DeliveryDto> deliveryList);
    void selectListByWaybillNum(List<Long> waybillNumList);
    List<OrderDetailDto> selectForDelivery();
    int searchResultCnt(SearchDeliveryCondition sc);
    List<OrderDetailDto> searchSelectPage(SearchDeliveryCondition sc);

}
