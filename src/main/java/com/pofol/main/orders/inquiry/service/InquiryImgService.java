package com.pofol.main.orders.inquiry.service;

import java.util.List;

import com.pofol.main.orders.inquiry.domain.InquiryImgDto;

public interface InquiryImgService {

	List<String> selectAllByInqId(Long inquiry_id);
}
