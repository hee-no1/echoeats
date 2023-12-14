package com.pofol.main.orders.order.service;

import java.util.List;
import java.util.Map;

import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.product.basket.SelectedItemsDto;

public interface OrderService {
    //장바구니에서 넘어온 데이터를 가지고 실 주문 금액과 실 결제 금액 계산
    OrderCheckout writeCheckout(List<SelectedItemsDto> items);
    // mypage에서 주문리스트 가져오는 메서드
    public abstract List<OrderDto> selectAllByUserIdAndPeriod(Map map) throws Exception;
    // mypage에서 주문리스트 이미지가져오는 메서드
    public abstract String selectByOrderMainImg(Long ord_id);
    
    public abstract OrderDto selectByOrderId(Long ord_id);

    Long writeOrder(OrderCheckout oc);
    void modifyOrder(PaymentDto pd);

}
