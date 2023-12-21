package com.pofol.main.orders.inquiry.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pofol.main.orders.inquiry.domain.InquiryDto;
import com.pofol.main.orders.order.domain.CodeTableDto;
@Repository
public class InquiryRepositoryImpl implements InquiryRepository {

	@Autowired
	private SqlSession session;
	private static String namespace = "repository.inquiryMapper.";

	@Override
	public List<InquiryDto> selectAllByUserId(String mem_id) {
		return session.selectList(namespace+"selectAllByUserId", mem_id);
	}
	
	@Override
	public InquiryDto selectByinqId(Long inquiry_id) {
		return session.selectOne(namespace+"selectByinqId", inquiry_id);
	}
	
	@Override
	public List<CodeTableDto> selectCodeType(Integer code_type) throws Exception{
		return session.selectList(namespace + "selectCodeType", code_type);
	}
	
	@Override
	public int insert(InquiryDto dto) throws Exception {
		return session.insert(namespace + "insert", dto);
	}

	@Override
	public InquiryDto select(Long inquiry_id) throws Exception {
		return session.selectOne(namespace + "select", inquiry_id);
	}

	@Override
	public int update(InquiryDto dto) throws Exception {
		return session.update(namespace + "update", dto);
	}// updateStatus

	@Override
	public int delete(Long inquiry_id) throws Exception {
		return session.delete(namespace + "delete", inquiry_id);
	}

	@Override
	public List<InquiryDto> selectAll() throws Exception {
		return session.selectList(namespace + "selectAll");
	}

	@Override
	public int deleteAll() throws Exception {
		return session.delete(namespace + "deleteAll");
	}

	@Override
	public int count() throws Exception {
		return session.selectOne(namespace + "count");
	}
	
	@Override
	public List<CodeTableDto> selectCodeTypeByCodeName(String code_name) throws Exception {
		return session.selectList(namespace + "selectCodeTypeByCodeName",code_name);
	}

	@Override
	public String selectNametoSts(String code_name) throws Exception {
		return session.selectOne(namespace + "selectNametoSts", code_name);
	}
}
