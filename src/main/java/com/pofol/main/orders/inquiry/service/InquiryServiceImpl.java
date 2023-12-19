package com.pofol.main.orders.inquiry.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.pofol.main.orders.inquiry.domain.InquiryDto;
import com.pofol.main.orders.inquiry.domain.InquiryImgDto;
import com.pofol.main.orders.inquiry.repository.InquiryImgRepository;
import com.pofol.main.orders.inquiry.repository.InquiryPrdRepository;
import com.pofol.main.orders.inquiry.repository.InquiryRepository;
import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.util.AwsS3ImgUploaderService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class InquiryServiceImpl implements InquiryService {
	
	private final InquiryRepository inqRepo;
	private final InquiryPrdRepository inqPrdRepo;
	private final InquiryImgRepository inqImgRepo;
	
	private final AwsS3ImgUploaderService awsS3ImgUploaderService;
	
	@Override
//	@Transactional(rollbackFor=Exception.class) 
	public int insert(InquiryDto inqDto) throws Exception {
		inqRepo.insert(inqDto);
		for(MultipartFile file:inqDto.getImageFile()) {
	   		String url = awsS3ImgUploaderService.uploadImageToS3(file,"inquiry");
	   		InquiryImgDto inqImgDto = new InquiryImgDto(inqDto.getInquiry_id(),url,inqDto.getMem_id());
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
	
	@Override
	public List<CodeTableDto> selectCodeType(Integer code_type) throws Exception {
		return inqRepo.selectCodeType(code_type);
	}

	@Override
	public List<CodeTableDto> selectCodeTypeByCodeName(String code_name) throws Exception {
		return inqRepo.selectCodeTypeByCodeName(code_name);
	}

	@Override
	public String selectNametoSts(String code_name) throws Exception {
		return inqRepo.selectNametoSts(code_name);
	}
}
