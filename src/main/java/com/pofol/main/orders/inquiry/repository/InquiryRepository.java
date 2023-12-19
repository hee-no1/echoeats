package com.pofol.main.orders.inquiry.repository;

import java.util.List;

import com.pofol.main.orders.inquiry.domain.InquiryDto;
import com.pofol.main.orders.order.domain.CodeTableDto;

public interface InquiryRepository {
	public abstract List<InquiryDto> selectAllByUserId(String mem_id);
	public abstract InquiryDto selectByinqId(Long inquiry_id);
	public abstract List<CodeTableDto> selectCodeType(Integer code_type) throws Exception;
	//crud
	public abstract int insert(InquiryDto dto) throws Exception;
    public abstract InquiryDto select(Long id) throws Exception;
    public abstract int update(InquiryDto dto) throws Exception;
	public abstract int delete(Long id) throws Exception;
	
	public abstract List<InquiryDto> selectAll() throws Exception;
    public abstract int deleteAll() throws Exception;
    public abstract int count() throws Exception;
    
    public abstract String selectNametoSts(String code_name) throws Exception;
	public abstract List<CodeTableDto> selectCodeTypeByCodeName(String code_name)throws Exception;
}
