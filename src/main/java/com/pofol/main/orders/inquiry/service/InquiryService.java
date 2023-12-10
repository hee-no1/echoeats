package com.pofol.main.orders.inquiry.service;

import java.util.List;

import com.pofol.main.orders.inquiry.domain.InquiryDto;

public interface InquiryService {
	//crud
	public abstract int insert(InquiryDto dto) throws Exception;
    public abstract InquiryDto select(Long id) throws Exception;
    public abstract int update(InquiryDto dto) throws Exception;
	public abstract int delete(Long id) throws Exception;
	
	public abstract List<InquiryDto> selectAll() throws Exception;
    public abstract int deleteAll() throws Exception;
    public abstract int count() throws Exception;
}
