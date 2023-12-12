package com.pofol.main.board.controller;

import com.pofol.main.board.domain.FaqDto;
import com.pofol.main.board.service.FaqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/board")
public class FaqController {
    @Autowired
    private FaqService faqService;

    @RequestMapping(value = "/faq")
    public String faqPage() {
        System.out.println("FAQ 조회 페이지");
        return "board/faq";
    }
    @RequestMapping("/faq_admin")
    public String faq_admin(){
        System.out.println(">>FAQ 관리자 페이지");
        return "board/faq_admin";
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

    @RequestMapping("/faq_write")
    public String faq_write() {
        System.out.println("FAQ 작성 페이지");
        return "board/faq_write";
    }
    @RequestMapping(value = "/insertFaq", method = RequestMethod.POST)
    public String faq_register(FaqDto dto) {
        System.out.println("FAQ 입력");
        System.out.println("dto : " + dto);

        faqService.insertFaq(dto);
        return "redirect:/board/faq_admin";
    }

    // FAQ 세부사항을 수정할 수 있는 페이지를 표시
    @RequestMapping("/faq_modify")
    public String faq_modify(FaqDto dto, Model model) {
        System.out.println(">>FAQ 페이지 수정 페이지");
        FaqDto faq = faqService.selectFaq(dto);
        model.addAttribute("faq", faq);

        System.out.println("faq : " + faq);

        return "board/faq_modify";
    }

    // FAQ 업데이트 시 양식 제출을 처리하는 역할 (DB 처리)
    @RequestMapping(value = "/updateFaq", method = RequestMethod.POST)
    public String updateNotice(FaqDto dto, int faq_id) {
        System.out.println("===> FAQ 수정");
        System.out.println(faq_id);
        faqService.updateFaq(dto);

        System.out.println("dto : " + dto);

        return "redirect:/board/faq_admin";
    }
    @RequestMapping("/deleteFaq")
    public String deleteFaq(FaqDto dto) {
        System.out.println(">> FAQ 삭제");
        System.out.println("dto : " + dto);

        faqService.deleteFaq(dto);

        return "redirect:/board/faq_admin";
    }
}
