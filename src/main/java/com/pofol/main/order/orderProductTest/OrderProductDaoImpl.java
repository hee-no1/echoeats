package com.pofol.main.order.orderProductTest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderProductDaoImpl implements OrderProductDao{

    @Autowired
    SqlSession session;
    String namespace = "com.pofol.main.order.orderProductMapper.";

    @Override
    public ProductDto select(String productName) throws Exception {
        return session.selectOne(namespace + "select", productName);
    }
}
