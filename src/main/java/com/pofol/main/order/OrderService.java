package com.pofol.main.order;

import com.pofol.main.order.paymentData.PaymentDataDto;

public interface OrderService {

    Boolean verifyPayment(PaymentDataDto paymentDataDto);


}
