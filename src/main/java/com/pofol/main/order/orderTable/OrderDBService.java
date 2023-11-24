package com.pofol.main.order.orderTable;

import com.pofol.main.order.paymentData.PaymentDataDto;

public interface OrderDBService {

    void insert(PaymentDataDto paymentDataDto);
}
