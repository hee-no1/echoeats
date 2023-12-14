package com.pofol.main.orders.inquiry;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.pofol.main.orders.inquiry.domain.InquiryImgDto;
import com.pofol.main.orders.inquiry.repository.InquiryImgRepository;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class InquiryImgRepositoryImplTest {

    @Autowired
    InquiryImgRepository inquiryImgRepository;
    
    @BeforeEach  
	public void init() throws Exception{
		// delete all
		inquiryImgRepository.deleteAll();
		assertTrue(inquiryImgRepository.count() == 0);
    }
    
    @Test
    public void insert() throws Exception{
    	InquiryImgDto dto = new InquiryImgDto(111L,"filename","test");
        int insert = inquiryImgRepository.insert(dto);
        assertThat(insert).isEqualTo(1);
    }
    
    @Test
    public void select() throws Exception{
    	InquiryImgDto dto = new InquiryImgDto(111L,"filename","test");
    	assertTrue(inquiryImgRepository.insert(dto)==1);
        System.out.println("dto = "+dto);
        InquiryImgDto dto2 = inquiryImgRepository.select(dto.getInquiry_img_id());
        assertTrue(dto.getInquiry_img_id()== dto2.getInquiry_img_id());
    }
    
	@Test
	public void updateTest() throws Exception {
		// insert
		InquiryImgDto dto = new InquiryImgDto(111L,"filename","test");
    	assertTrue(inquiryImgRepository.insert(dto)==1);
		//update
    	InquiryImgDto dto2 = inquiryImgRepository.select(dto.getInquiry_img_id());
    	dto2.setFile_name("filename1234");
		assertTrue(inquiryImgRepository.update(dto2) == 1);
		InquiryImgDto dto3 = inquiryImgRepository.select(dto.getInquiry_img_id());
		assertTrue(dto2.equals(dto3));
	}
	
	@Test
    public void deleteTest() throws Exception {
		// insert
		InquiryImgDto dto = new InquiryImgDto(111L,"filename","test");
    	assertTrue(inquiryImgRepository.insert(dto)==1);
	
    	InquiryImgDto dto2 = new InquiryImgDto(111L,"filename","test");
    	assertTrue(inquiryImgRepository.insert(dto)==1);
		assertTrue(inquiryImgRepository.count() == 2);
		
		assertTrue(inquiryImgRepository.delete(dto.getInquiry_img_id())==1);
		assertTrue(inquiryImgRepository.count() == 1);
	}
}