package com.pofol.main.orderTable;

import com.pofol.main.order.PaymentDataDto;

public interface OrderDBService {

    void insert(PaymentDataDto paymentDataDto);
}
