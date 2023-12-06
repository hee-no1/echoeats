package com.pofol.main.orders.payment.service;

import com.pofol.main.orders.order.domain.OrderCheckout;

public interface PaymentService {

    Boolean prevVerify(OrderCheckout oc);
}
