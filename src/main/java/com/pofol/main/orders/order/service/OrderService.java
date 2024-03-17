package com.pofol.main.orders.order.service;

import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.payment.domain.PaymentInfo;
import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.product.cart.SelectedItemsDto;

import java.util.List;
import java.util.Map;

public interface OrderService {

    //장바구니에서 넘어온 데이터를 가지고 실 주문 금액과 실 결제 금액 계산
    OrderCheckout writeCheckout(List<SelectedItemsDto> items);
    PaymentDiscountDto calculatePayment(PaymentDiscountDto pdd);
    Long writeOrder(PaymentInfo pi);
    void modifyOrder(Long ord_id, String code_name);
    
    // mypage에서 주문리스트 가져오는 메서드
    public abstract List<OrderDto> selectAllByUserIdAndPeriod(Map map) throws Exception;
    // mypage에서 주문리스트 이미지가져오는 메서드
    public abstract String selectByOrderMainImg(Long ord_id);

    public abstract OrderDto selectByOrderId(Long ord_id);
}
