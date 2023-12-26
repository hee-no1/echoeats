package com.pofol.main.orders.order.repository;

import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.domain.SearchOrderCondition;

import java.util.List;

public interface OrderDetailRepository {
    int insert(OrderDetailDto orderDetailDto) throws Exception;
    OrderDetailDto select(Long ord_det_id) throws Exception;
    List<OrderDetailDto> selectList(Long ord_id) throws Exception;
    int updateStatus(OrderDetailDto orderDetailDto) throws Exception;
    int delete(Long ord_det_id) throws Exception;
    List<OrderDetailDto> selectAll() throws Exception;
    int deleteAll() throws Exception;
    int count() throws Exception;
    public abstract int update(OrderDetailDto orderDetailDto)throws Exception;
    // mypage에서 주문상세 리스트 가져오는 메서드
    public abstract List<OrderDetailDto> selectAllByOrdId(Long ord_id)throws Exception;
	// mypage에서 주문리스트 이미지가져오는 메서드
    public abstract String selectByOrderDetImg(Long ord_det_id)throws Exception;
	// mypage에서 주문상세의 배송상태를 code테이블에서 가져오는 메서드
    public abstract String selectByCodeName(String code_name)throws Exception;
    // inquiry에서 주문상세를 가져오는 메서드
    public abstract OrderDetailDto selectByOrderDetId(Long ord_det_id) throws Exception;
    public abstract List searchSelectPage(SearchOrderCondition sc)throws Exception;
    public abstract int searchResultCnt(SearchOrderCondition sc) throws Exception;
}
