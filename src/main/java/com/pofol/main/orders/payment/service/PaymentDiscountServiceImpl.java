package com.pofol.main.orders.payment.service;

import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.orders.payment.repository.PaymentDiscountRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PaymentDiscountServiceImpl implements PaymentDiscountService{

    private final PaymentDiscountRepository paymentDiscountRepository;

    @Override
    public PaymentDiscountDto getPaymentDiscount(Long ord_id) {
        try {
            return paymentDiscountRepository.select(ord_id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}
