package com.pofol.main.orders.payment.service;

import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.orders.payment.domain.PaymentInfo;

import java.net.MalformedURLException;

public interface PaymentService {

    Boolean prevVerify(PaymentInfo data);
    PaymentDto writePayment(PaymentDto pd);
    Boolean nextVerify(PaymentDto pd) throws MalformedURLException;
    PaymentDto getPayment(Long ord_id);
}
