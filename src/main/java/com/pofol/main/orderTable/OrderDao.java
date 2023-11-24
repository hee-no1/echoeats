package com.pofol.main.orderTable;

public interface OrderDao {
    //데이터 삽입
    int insert(OrderDto orderDto) throws Exception;
}
