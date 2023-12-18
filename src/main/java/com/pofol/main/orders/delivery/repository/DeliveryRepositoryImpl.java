package com.pofol.main.orders.delivery.repository;

import com.pofol.main.orders.delivery.domain.DeliveryDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class DeliveryRepositoryImpl implements DeliveryRepository {

    private final SqlSession session;
    private String namespace = "delivery.repository.deliveryMapper.";

    @Override
    public int insert(DeliveryDto deliveryDto) {
        return session.insert(namespace+"insert", deliveryDto);
    }

    @Override
    public DeliveryDto select(Long ord_det_id) {
        return session.selectOne(namespace+"select", ord_det_id);
    }

    @Override
    public int update(Long ord_det_id, String mem_id, String dlvy_sts) {
        Map<String,Object> map = new HashMap<>();
        map.put("md_num",mem_id);
        map.put("dlvy_sts",dlvy_sts);
        map.put("ord_det_id",ord_det_id);
        return session.update(namespace+"updateStatus",map);
    }
}
