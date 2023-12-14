package com.pofol.main.orders.payment.repository;

import com.pofol.main.orders.payment.domain.PaymentHistoryDto;

import java.util.List;

public interface PaymentHistoryRepository {
    int insert(PaymentHistoryDto paymentHistoryDto) throws Exception;
    PaymentHistoryDto selectOne(Long pay_hist_id) throws Exception;
    List<PaymentHistoryDto> selectList(Long pay_hist_id) throws Exception;
    int deleteList(Long pay_hist_id) throws Exception;


}
