package com.pofol.main.orders.inquiry.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pofol.main.orders.inquiry.domain.InquiryImgDto;
@Repository
public class InquiryImgRepositoryImpl implements InquiryImgRepository {

	@Autowired
	private SqlSession session;
	private static String namespace = "repository.inquiryImgMapper.";

	@Override
	public int insert(InquiryImgDto dto) throws Exception {
		return session.insert(namespace + "insert", dto);
	}

	@Override
	public InquiryImgDto select(Long inquiry_img_id) throws Exception {
		return session.selectOne(namespace + "select", inquiry_img_id);
	}

	@Override
	public int update(InquiryImgDto dto) throws Exception {
		return session.update(namespace + "update", dto);
	}// updateStatus

	@Override
	public int delete(Long inquiry_img_id) throws Exception {
		return session.delete(namespace + "delete", inquiry_img_id);
	}

	@Override
	public List<InquiryImgDto> selectAll() throws Exception {
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
