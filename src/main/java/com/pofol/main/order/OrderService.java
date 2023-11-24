package com.pofol.main.order;

public interface OrderService {

    Boolean verifyPayment(TotalProductsDto totalProduct);

    Long creatOrderId();

}
