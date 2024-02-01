package com.pofol.main.orders.payment.service;

import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.payment.domain.PaymentDto;

import java.net.MalformedURLException;

public interface PaymentService {

    Boolean prevVerify(OrderCheckout oc);
    PaymentDto writePayment(PaymentDto pd);
    Boolean nextVerify(PaymentDto pd) throws MalformedURLException;
    PaymentDto getPayment(Long ord_id);
}
