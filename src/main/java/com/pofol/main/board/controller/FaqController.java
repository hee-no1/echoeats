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

    // FAQ 사용자 페이지
    @RequestMapping(value = "/faq")
    public String faqPage() {
        return "board/faq";
    }
    // FAQ 관리자 페이지
    @RequestMapping("/faq_admin")
    public String faq_admin(){
        return "board/faq_admin";
    }

    // AJAX 로 FAQ 목록 가져오기
    @ResponseBody
    @RequestMapping(value = "/faqlist", method = RequestMethod.POST)
    public List<FaqDto> getFaqList(@RequestBody FaqDto dto) {
        String faqType = dto.getFaq_type();
        System.out.println("faqType: " + faqType);

        // 가져온 faqType으로 비즈니스 로직을 수행 -> 목록을 얻어옴
        List<FaqDto> list = faqService.selectAllFaq(dto);

        return list;
    }

    // FAQ 작성 페이지
    @RequestMapping("/faq_write")
    public String faq_write() {
        return "board/faq_write";
    }
    // FAQ 등록 페이지
    @RequestMapping(value = "/insertFaq", method = RequestMethod.POST)
    public String faq_register(FaqDto dto) {
        System.out.println("FAQ 입력");
        System.out.println("dto : " + dto);

        faqService.insertFaq(dto);
        return "redirect:/board/faq_admin";
    }

    // FAQ 수정 페이지
    @RequestMapping("/faq_modify")
    public String faq_modify(FaqDto dto, Model model) {
        FaqDto faq = faqService.selectFaq(dto);
        model.addAttribute("faq", faq);

        System.out.println("faq : " + faq);

        return "board/faq_modify";
    }

    // FAQ 수정 시 양식 제출을 처리하는 역할 (DB 처리)
    @RequestMapping(value = "/updateFaq", method = RequestMethod.POST)
    public String updateNotice(FaqDto dto, int faq_id) {
        System.out.println("===> FAQ 수정");
        System.out.println(faq_id);
        faqService.updateFaq(dto);

        System.out.println("dto : " + dto);

        return "redirect:/board/faq_admin";
    }
    // FAQ 삭제 페이지
    @RequestMapping("/deleteFaq")
    public String deleteFaq(FaqDto dto) {
        System.out.println(">> FAQ 삭제");
        System.out.println("dto : " + dto);

        faqService.deleteFaq(dto);

        return "redirect:/board/faq_admin";
    }
}
