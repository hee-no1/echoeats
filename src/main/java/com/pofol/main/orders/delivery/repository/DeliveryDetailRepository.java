package com.pofol.main.orders.delivery.repository;

import com.pofol.main.orders.delivery.domain.DeliveryDetailDto;

public interface DeliveryDetailRepository {

    int insert (DeliveryDetailDto deliveryDetailDto);
    DeliveryDetailDto select(Long ord_det_id);
    int update(Long ord_det_id, String mem_id, String dlvy_sts);

}
