package com.pofol.main.orders.inquiry.repository;

import java.util.List;

import com.pofol.main.orders.inquiry.domain.InquiryDto;

public interface InquiryRepository {
	public abstract List<InquiryDto> selectAllByUserId(String mem_id);
	public abstract InquiryDto selectByinqId(Long inquiry_id);
	
	//crud
	public abstract int insert(InquiryDto dto) throws Exception;
    public abstract InquiryDto select(Long id) throws Exception;
    public abstract int update(InquiryDto dto) throws Exception;
	public abstract int delete(Long id) throws Exception;
	
	public abstract List<InquiryDto> selectAll() throws Exception;
    public abstract int deleteAll() throws Exception;
    public abstract int count() throws Exception;

}
