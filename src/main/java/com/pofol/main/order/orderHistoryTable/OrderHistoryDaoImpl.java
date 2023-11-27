package com.pofol.main.order.orderHistoryTable;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderHistoryDaoImpl implements OrderHistoryDao{

    @Autowired
    SqlSession session;
    String namespace = "com.pofol.main.order.OrderHistoryMapper.";


    @Override
    public int insert(OrderHistoryDto orderHistoryDto) {
        return session.insert(namespace+"insert",orderHistoryDto);
    }
}
