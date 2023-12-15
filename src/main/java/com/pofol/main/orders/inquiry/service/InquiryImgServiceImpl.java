package com.pofol.main.orders.inquiry.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pofol.main.orders.inquiry.domain.InquiryImgDto;
import com.pofol.main.orders.inquiry.repository.InquiryImgRepository;
import com.pofol.main.orders.inquiry.repository.InquiryPrdRepository;
import com.pofol.main.orders.inquiry.repository.InquiryRepository;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class InquiryImgServiceImpl implements InquiryImgService {

	private final InquiryImgRepository inqImgRepo;
	
	@Override
	public List<String> selectAllByInqId(Long inquiry_id) {
		return inqImgRepo.selectAllByInqId(inquiry_id);
	}

	@Override
	public int insert(InquiryImgDto dto) throws Exception {
		return inqImgRepo.insert(dto);
	}

	@Override
	public InquiryImgDto select(Long id) throws Exception {
		return null;
	}

	@Override
	public int update(InquiryImgDto dto) throws Exception {
		return 0;
	}

	@Override
	public int delete(Long id) throws Exception {
		return 0;
	}

	@Override
	public List<InquiryImgDto> selectAll() throws Exception {
		return null;
	}

	@Override
	public int deleteAll() throws Exception {
		return 0;
	}

	@Override
	public int count() throws Exception {
		return 0;
	}

}
