package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderDetailDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@RequiredArgsConstructor
public class OrderDetailRepositoryImpl implements OrderDetailRepository{

    private final SqlSession session;

    private String namespace = "order.repository.orderDetailMapper.";

    @Override
    public int insert(OrderDetailDto orderDetailDto) throws Exception {
        return session.insert(namespace+"insert",orderDetailDto);
    }

    @Override
    public OrderDetailDto select(Long ord_det_id) throws Exception {
        return session.selectOne(namespace+"select",ord_det_id);
    }

    @Override
    public List<OrderDetailDto> selectList(Long ord_id) throws Exception {
        return session.selectList(namespace+"selectList",ord_id);
    }

    @Override
    public int updateStatus(OrderDetailDto orderDetailDto) throws Exception {
        return session.update(namespace+"updateStatus",orderDetailDto);
        //ord_det_id로 update
    }

    @Override
    public int delete(Long ord_det_id) throws Exception {
        return session.delete(namespace+"delete",ord_det_id);
    }

    @Override
    public List<OrderDetailDto> selectAll() throws Exception {
        return session.selectList(namespace+"selectAll");
    }

    @Override
    public int deleteAll() throws Exception{
        return session.delete(namespace+"deleteAll");
    }

    @Override
    public int count() throws Exception{
        return session.selectOne(namespace+"count");
    }
}
