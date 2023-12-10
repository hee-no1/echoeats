package com.pofol.main.orders.inquiry;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.pofol.main.orders.inquiry.domain.InquiryDto;
import com.pofol.main.orders.inquiry.repository.InquiryRepository;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class InquiryRepositoryImplTest {

    @Autowired
    InquiryRepository inquiryRepository;
    
    @BeforeEach  
	public void init() throws Exception{
		// delete all
		inquiryRepository.deleteAll();
		assertTrue(inquiryRepository.count() == 0);
    }
    
    @Test
    public void insert() throws Exception{
    	InquiryDto inquiryDto = new InquiryDto("test", "test", "test", "test", "test", "test");
        int insert = inquiryRepository.insert(inquiryDto);
        assertThat(insert).isEqualTo(1);
    }
    
    @Test
    public void select() throws Exception{
    	InquiryDto inquiryDto = new InquiryDto("test", "test", "test", "test", "test", "test");
    	assertTrue(inquiryRepository.insert(inquiryDto)==1);
        System.out.println("inquiryDto = "+inquiryDto);
        InquiryDto inquiryDto2 = inquiryRepository.select(inquiryDto.getInquiry_id());
        assertTrue(inquiryDto.getInquiry_id()== inquiryDto2.getInquiry_id());
    }
    
	@Test
	public void updateTest() throws Exception {
		// insert
		InquiryDto inquiryDto = new InquiryDto("test", "test", "test", "test", "test", "test");
    	assertTrue(inquiryRepository.insert(inquiryDto)==1);
		//update
    	InquiryDto inquiryDto2 = inquiryRepository.select(inquiryDto.getInquiry_id());
    	inquiryDto2.setTitle("test1234");
		assertTrue(inquiryRepository.update(inquiryDto2) == 1);
		InquiryDto inquiryDto3 = inquiryRepository.select(inquiryDto.getInquiry_id());
		assertTrue(inquiryDto2.equals(inquiryDto3));
	}
	
	@Test
    public void deleteTest() throws Exception {
		// insert
		InquiryDto inquiryDto = new InquiryDto("test", "test", "test", "test", "test", "test");
    	assertTrue(inquiryRepository.insert(inquiryDto)==1);
	
    	InquiryDto inquiryDto2 = new InquiryDto("test", "test", "test", "test", "test", "test");
    	assertTrue(inquiryRepository.insert(inquiryDto)==1);
		assertTrue(inquiryRepository.count() == 2);
		
		assertTrue(inquiryRepository.delete(inquiryDto.getInquiry_id())==1);
		assertTrue(inquiryRepository.count() == 1);
	}
}