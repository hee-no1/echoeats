package com.pofol.main.orders.payment.repository;

import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.orders.payment.domain.PaymentDto;

import java.util.List;

public interface PaymentRepository {
    int insert(PaymentDto paymentDto) throws Exception;
    PaymentDto select(Long ord_id) throws Exception;
    int updateStatus(PaymentDto paymentDto) throws Exception;
    int delete(String pay_id) throws Exception;
    List<PaymentDto> selectAll() throws Exception;
    int deleteAll() throws Exception;
    int count() throws Exception;
    Integer selectTotalPrice(PaymentDto paymentDto) throws Exception;
    List<PaymentDto> selectPayment(PaymentDto paymentDto) throws Exception;

}
