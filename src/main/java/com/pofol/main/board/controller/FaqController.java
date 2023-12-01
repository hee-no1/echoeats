package com.pofol.main.board.controller;

import com.pofol.main.board.domain.FaqDto;
import com.pofol.main.board.service.FaqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public List<FaqDto> getFaqList(@RequestBody FaqDto dto) {
        String faqType = dto.getFaq_type();
        System.out.println("faqType: " + faqType);

        // 가져온 faqType으로 비즈니스 로직을 수행 -> 목록을 얻어옴
        List<FaqDto> list = faqService.selectAllFaq(dto);

        return list;
    }
}
