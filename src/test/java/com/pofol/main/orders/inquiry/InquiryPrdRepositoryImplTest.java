package com.pofol.main.orders.inquiry;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.Date;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.pofol.main.orders.inquiry.domain.InquiryPrdDto;
import com.pofol.main.orders.inquiry.repository.InquiryPrdRepository;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class InquiryPrdRepositoryImplTest {

    @Autowired
    InquiryPrdRepository inquiryPrdRepository;
    
    @BeforeEach  
	public void init() throws Exception{
		// delete all
		inquiryPrdRepository.deleteAll();
		assertTrue(inquiryPrdRepository.count() == 0);
    }
    
    @Test
    public void insert() throws Exception{
    	InquiryPrdDto dto = new InquiryPrdDto(111L,111L,111L,new Date(),"test",1,1000,"test");
        int insert = inquiryPrdRepository.insert(dto);
        assertThat(insert).isEqualTo(1);
    }
    
    @Test
    public void select() throws Exception{
    	InquiryPrdDto dto = new InquiryPrdDto(111L,111L,111L,new Date(),"test",1,1000,"test");
    	assertTrue(inquiryPrdRepository.insert(dto)==1);
        System.out.println("dto = "+dto);
        InquiryPrdDto dto2 = inquiryPrdRepository.select(dto.getInquiry_prd_id());
        assertTrue(dto.getInquiry_prd_id()== dto2.getInquiry_prd_id());
    }
    
	@Test
	public void updateTest() throws Exception {
		// insert
		InquiryPrdDto dto = new InquiryPrdDto(111L,111L,111L,new Date(),"test",1,1000,"test");
    	assertTrue(inquiryPrdRepository.insert(dto)==1);
		//update
    	InquiryPrdDto dto2 = inquiryPrdRepository.select(dto.getInquiry_prd_id());
    	dto2.setProd_name("test1234");
		assertTrue(inquiryPrdRepository.update(dto2) == 1);
		InquiryPrdDto dto3 = inquiryPrdRepository.select(dto.getInquiry_prd_id());
		assertTrue(dto2.equals(dto3));
	}
	
	@Test
    public void deleteTest() throws Exception {
		// insert
		InquiryPrdDto dto = new InquiryPrdDto(111L,111L,111L,new Date(),"test",1,1000,"test");
    	assertTrue(inquiryPrdRepository.insert(dto)==1);
	
    	InquiryPrdDto dto2 = new InquiryPrdDto(111L,111L,111L,new Date(),"test",1,1000,"test");
    	assertTrue(inquiryPrdRepository.insert(dto)==1);
		assertTrue(inquiryPrdRepository.count() == 2);
		
		assertTrue(inquiryPrdRepository.delete(dto.getInquiry_prd_id())==1);
		assertTrue(inquiryPrdRepository.count() == 1);
	}
}