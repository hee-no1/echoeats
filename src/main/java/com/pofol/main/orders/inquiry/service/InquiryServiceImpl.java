package com.pofol.main.orders.inquiry.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pofol.main.orders.inquiry.domain.InquiryDto;
@Repository
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	private SqlSession session;
	private static String namespace = "repository.inquiryMapper.";

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
}
