package com.pofol.main.order.orderProductTest;

public interface OrderProductDao {
    ProductDto select(String productName) throws Exception;
}
