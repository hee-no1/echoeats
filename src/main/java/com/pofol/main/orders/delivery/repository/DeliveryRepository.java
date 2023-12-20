package com.pofol.main.orders.delivery.repository;

import com.pofol.main.orders.delivery.domain.DeliveryDto;

import java.util.List;

public interface DeliveryRepository {

    int insert (DeliveryDto deliveryDto) throws Exception;
    DeliveryDto select(Long ord_det_id) throws Exception;
    int update(DeliveryDto deliveryDto) throws Exception;
    List<DeliveryDto> selectListByWaybillNum(Long waybill_num) throws Exception;

}
