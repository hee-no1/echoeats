package com.pofol.main.orders.inquiry.repository;

import java.util.List;

import com.pofol.main.orders.inquiry.domain.InquiryImgDto;

public interface InquiryImgRepository {
	//crud
	public abstract int insert(InquiryImgDto dto) throws Exception;
    public abstract InquiryImgDto select(Long id) throws Exception;
    public abstract int update(InquiryImgDto dto) throws Exception;
	public abstract int delete(Long id) throws Exception;
	
	public abstract List<InquiryImgDto> selectAll() throws Exception;
    public abstract int deleteAll() throws Exception;
    public abstract int count() throws Exception;
}
