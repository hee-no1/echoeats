package com.pofol.main.orders.inquiry.service;

import java.util.List;

import com.pofol.main.orders.inquiry.domain.InquiryDto;
import com.pofol.main.orders.order.domain.CodeTableDto;

public interface InquiryService {

	public abstract List<CodeTableDto> selectCodeType(Integer code_type) throws Exception;
	public abstract int insert(InquiryDto dto) throws Exception;
	public abstract List<InquiryDto> selectAllByUserId(String mem_id) throws Exception;
	public abstract InquiryDto selectByinqId(Long inquiry_id) throws Exception;
	public abstract List<CodeTableDto> selectCodeTypeByCodeName(String code_name)throws Exception;
	public abstract String selectNametoSts(String code_name) throws Exception;
}
