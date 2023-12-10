package com.pofol.main.orders.inquiry.repository;

import java.util.List;

import com.pofol.main.orders.inquiry.domain.InquiryPrdDto;

public interface InquiryPrdRepository {
	//crud
	public abstract int insert(InquiryPrdDto dto) throws Exception;
    public abstract InquiryPrdDto select(Long id) throws Exception;
    public abstract int update(InquiryPrdDto dto) throws Exception;
	public abstract int delete(Long id) throws Exception;
	
	public abstract List<InquiryPrdDto> selectAll() throws Exception;
    public abstract int deleteAll() throws Exception;
    public abstract int count() throws Exception;
}
