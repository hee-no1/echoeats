package com.pofol.main.orders.delivery.repository;

import com.pofol.main.orders.delivery.domain.DeliveryDto;

public interface DeliveryRepository {

    int insert (DeliveryDto deliveryDto);
    DeliveryDto select(Long ord_det_id);
    int update(Long ord_det_id, String mem_id, String dlvy_sts);

}
