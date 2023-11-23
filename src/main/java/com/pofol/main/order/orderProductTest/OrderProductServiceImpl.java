package com.pofol.main.order.orderProductTest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderProductServiceImpl implements OrderProductService{

    @Autowired
    OrderProductDao orderProductDao;

    @Override
    public ProductDto select(String productName) throws Exception {
        return orderProductDao.select(productName);
    }
}
