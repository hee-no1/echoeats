package com.pofol.main.orders.payment.repository;

import com.pofol.main.orders.payment.domain.PaymentDiscountDto;

import java.util.List;

public interface PaymentDiscountRepository {
    int insert(PaymentDiscountDto paymentDiscountDto) throws Exception;
    PaymentDiscountDto select(Long ord_id) throws Exception;
    int delete(Long ord_id) throws Exception;
    List<PaymentDiscountDto> selectAll() throws Exception;
    int count() throws Exception;

}
