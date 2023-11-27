package com.pofol.main.order.orderDetailTable;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDetailDaoImpl implements OrderDetailDao{

    @Autowired
    SqlSession session;
    String namespace = "com.pofol.main.order.OrderDetailMapper.";

    @Override
    public int insert(OrderDetailDto orderDetailDto) throws Exception{
        return session.insert(namespace+"insert",orderDetailDto);
    }
}
