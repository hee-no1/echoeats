package com.pofol.main.orders.delivery.service;

import com.pofol.main.orders.delivery.domain.DeliveryDto;

import java.util.List;

public interface DeliveryService {
    void writeDelivery(List<DeliveryDto> deliveryList);
    void selectListByWaybillNum(List<Long> waybillNumList);

}
