//package com.pofol.main.faq.dao;
//
//import com.pofol.main.faq.dto.FaqDto;
//import org.junit.jupiter.api.Test;
//import org.junit.jupiter.api.extension.ExtendWith;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit.jupiter.SpringExtension;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import static org.junit.Assert.assertTrue;
//import static org.junit.jupiter.api.Assertions.*;
//
//@ExtendWith(SpringExtension.class) // Junit5
//@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
//class FaqDaoImplTest {
//
//    @Autowired
//    FaqDao faqDao;
//
//    // 연습용 더미 데이터 입력
////    @Test
////    public void insertTestData() throws Exception {
////        for(int i = 1; i <= 100; i++) {
////            FaqDto faqDto = new FaqDto(i, "회원", "제목테스트", "안녕하세요오오");
////            faqDao.insert(faqDto);
////        }
////    }
////    @Test
////    public void insertTest() throws Exception {
////        FaqDto faqDto = new FaqDto(3, "회원", "no title", "no content");
////        assertTrue(faqDao.insert(faqDto)==1);
////
////        faqDto = new FaqDto(2, "전체", "no title", "no content");
////        assertTrue(faqDao.insert(faqDto)==1);
////
////        faqDto = new FaqDto(1, "배송", "no title", "no content");
////        assertTrue(faqDao.insert(faqDto)==1);
////    }
////
////    @Test
////    public void selectAllTest() throws Exception {
////        List<FaqDto> list = faqDao.selectAll(new FaqDto());
////        assertTrue(list.size() == 0);
////
////        FaqDto faqDto = new FaqDto(5, "배송", "no title", "no content");
////        assertTrue(faqDao.insert(faqDto)==1);
////
////        list = faqDao.selectAll(faqDto);
////        assertTrue(list.size() == 1);
////
////        assertTrue(faqDao.insert(faqDto)==1);
////        list = faqDao.selectAll(faqDto);
////        assertTrue(list.size() == 2);
////    }
////
////    @Test
////    public void selectTest() throws Exception {
////    }
////
////
////    @Test
////    public void updateTest() throws Exception {
////    }
//
//
//}