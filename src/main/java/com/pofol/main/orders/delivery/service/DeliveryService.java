package com.pofol.main.orders.delivery.service;

import com.pofol.main.orders.delivery.domain.DeliveryDto;

import java.util.List;

public interface DeliveryService {
    void writeDelivery(DeliveryDto delivery);
    void modifyDelivery(DeliveryDto delivery);
    List<DeliveryDto> selectListByWaybillNum(Long waybill_num);

}
