package com.pofol.main.orders.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.repository.OrderDetailRepository;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
	
	@Autowired
	private OrderDetailRepository orderDetailRepository;
	/**
     * @param ord_id(주문ID)
     * @return List<OrderDetailDto>
     * @feat : mypage에 주문상세리스트를 가져오는 메서드
     **/ 
	@Override
	public List<OrderDetailDto> selectAllByOrdId(Long ord_id) throws Exception {
		return orderDetailRepository.selectAllByOrdId(ord_id);
	}
	/**
     * @param ord_det_id(주문상세ID)
     * @return String
     * @feat : mypage에 주문상세리스트의 이미지의 url을 가져오는 메서드
     **/ 
	@Override
	public String selectByOrderDetImg(Long ord_det_id) {
		return orderDetailRepository.selectByOrderDetImg(ord_det_id);
	}
	/**
     * @param code_name
     * @return String
     * @feat : mypage에서 주문상세의 배송상태를 code테이블에서 가져오는 메서드
     **/
	@Override
	public String selectByCodeName(String code_name) {
		return orderDetailRepository.selectByCodeName(code_name);
	}
	/**
     * @param ord_det_id
     * @return OrderDetailDto
     * @feat : inquiry에서 주문상세를 가져오는 메서드
     **/
	@Override
	public OrderDetailDto selectByOrderDetId(Long ord_det_id) {
		return orderDetailRepository.selectByOrderDetId(ord_det_id);
	}

	/**
	 * @return List<OrderDetailDto>
	 * @feat : 관리자 배송 페이지에서 주문상세를 가져오는 메서드
	 */
	@Override
	public List<OrderDetailDto> selectForDelivery() {
		return orderDetailRepository.selectForDelivery();
	}

}
