package com.pofol.main.orderTable;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDaoImpl implements OrderDao {

    @Autowired
    SqlSession session;
    String namespace = "com.pofol.main.order.OrderMapper.";

    //처음 insert [주문중]
    @Override
    public int insert(OrderDto orderDto) throws Exception {
        return session.insert(namespace + "insert", orderDto);
    }
}
