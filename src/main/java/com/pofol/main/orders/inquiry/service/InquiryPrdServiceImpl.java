package com.pofol.main.orders.inquiry.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pofol.main.orders.inquiry.domain.InquiryPrdDto;
@Service
public class InquiryPrdServiceImpl implements InquiryPrdService {

	@Autowired
	private SqlSession session;
	private static String namespace = "repository.inquiryPrdMapper.";

	@Override
	public int insert(InquiryPrdDto dto) throws Exception {
		return session.insert(namespace + "insert", dto);
	}

	@Override
	public InquiryPrdDto select(Long inquiry_prd_id) throws Exception {
		return session.selectOne(namespace + "select", inquiry_prd_id);
	}

	@Override
	public int update(InquiryPrdDto dto) throws Exception {
		return session.update(namespace + "update", dto);
	}// updateStatus

	@Override
	public int delete(Long inquiry_prd_id) throws Exception {
		return session.delete(namespace + "delete", inquiry_prd_id);
	}

	@Override
	public List<InquiryPrdDto> selectAll() throws Exception {
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
