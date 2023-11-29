package com.pofol.main.board.controller;

import com.pofol.main.board.dto.FaqDto;
import com.pofol.main.board.service.FaqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/board")
public class FaqController {
    @Autowired
    private FaqService faqService;

    @GetMapping(value = "/notice")
    public String noticePage() {
        return "notice/notice";
    }
    @GetMapping(value = "/faq")
    public String faqPage() {
        return "faq/faq";
    }

    // 메서드의 반환값이 HTTP 응답의 body에 쓰여짐 (JSON으로 변환하여 클라이언트에 전송)
    @ResponseBody
    @RequestMapping(value = "/faqlist", method = RequestMethod.POST)
    public List<FaqDto> getFaqList(@RequestBody FaqDto dto) { // JSON데이터를 자바 객체로
        String faqType = dto.getFaq_type();
        System.out.println("faqType: " + faqType);

        // 가져온 faqType으로 비즈니스 로직을 수행 -> 목록을 얻어옴
        List<FaqDto> list = faqService.selectAllFaq(dto);

        return list;
    }






//    @ResponseBody
//    @RequestMapping(value = "/faqlist", method = RequestMethod.POST)
//    public Map<String, Object> getFaqList(@RequestBody Map<String, Object> paramMap) {
//        int page = (int) paramMap.get("page");
//        String faqType = (String) paramMap.get("faq_type");
//
//        // 페이징 처리를 위한 추가 작업
//        int pageSize = 10; // 한 페이지에 보여줄 항목 수
//
//        FaqDto dto = new FaqDto();
//        dto.setFaq_type(faqType);
//        int totalCnt = faqService.getTotalFaqCountFaq(dto); // 전체 항목 수
//
//        PageHandler pageHandler = new PageHandler(totalCnt, page, pageSize);
//
//        int startRow = (page - 1) * pageSize + 1;
//        int endRow = startRow + pageSize - 1;
//
//        dto.setStartRow(startRow);
//        dto.setEndRow(endRow);
//
//        List<FaqDto> list = faqService.getPagedDataFaq(dto);
//
//        Map<String, Object> resultMap = new HashMap<>();
//        resultMap.put("faqList", list);
//        resultMap.put("pageHandler", pageHandler);
//
//        return resultMap;
//    }
}
