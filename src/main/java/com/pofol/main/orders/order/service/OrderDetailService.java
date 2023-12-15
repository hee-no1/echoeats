package com.pofol.main.orders.order.service;

import java.util.List;
import java.util.Map;

import com.pofol.main.orders.order.domain.OrderDetailDto;

public interface OrderDetailService {
    // mypage에서 주문상세 리스트 가져오는 메서드
    public abstract List<OrderDetailDto> selectAllByOrdId(Long ord_id) throws Exception;
    // mypage에서 주문리스트 이미지가져오는 메서드
    public abstract String selectByOrderDetImg(Long ord_det_id);
    // mypage에서 주문상세의 배송상태를 code테이블에서 가져오는 메서드
    public abstract String selectByCodeName(String code_name);
}
