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

}
