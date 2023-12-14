package com.pofol.main.orders.inquiry.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.pofol.main.orders.inquiry.domain.InquiryDto;
import com.pofol.main.orders.inquiry.domain.InquiryImgDto;
import com.pofol.main.orders.inquiry.repository.InquiryImgRepository;
import com.pofol.main.orders.inquiry.repository.InquiryPrdRepository;
import com.pofol.main.orders.inquiry.repository.InquiryRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class InquiryServiceImpl implements InquiryService {
	
	private final InquiryRepository inqRepo;
	private final InquiryPrdRepository inqPrdRepo;
	private final InquiryImgRepository inqImgRepo;
	
	@Override
//	@Transactional(rollbackFor=Exception.class) 
	public int insert(InquiryDto dto) throws Exception {
		inqRepo.insert(dto);
		InquiryImgDto inqImgDto;
		for(MultipartFile file : dto.getImageFile()) {
			String file_name ="";//
			inqImgDto = new InquiryImgDto(dto.getInquiry_id(),file_name,dto.getRg_num() );
			inqImgRepo.insert(inqImgDto);
		}
		return 1;
	}

	@Override
	public List<InquiryDto> selectAllByUserId(String mem_id) throws Exception {
		return inqRepo.selectAllByUserId(mem_id);
	}

	@Override
	public InquiryDto selectByinqId(Long inquiry_id) {
		return inqRepo.selectByinqId(inquiry_id);
	}
}
