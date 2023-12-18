package com.pofol.main.orders.payment.service;

import com.pofol.main.orders.payment.domain.PaymentDiscountDto;

public interface PaymentDiscountService {
    PaymentDiscountDto getPaymentDiscount(Long ord_id);
}
