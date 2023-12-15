package com.pofol.main.orders.inquiry.service;

import java.util.List;

import com.pofol.main.orders.inquiry.domain.InquiryDto;

public interface InquiryService {

	public abstract int insert(InquiryDto dto) throws Exception;
	public abstract List<InquiryDto> selectAllByUserId(String mem_id) throws Exception;
	public abstract InquiryDto selectByinqId(Long inquiry_id);
}
