package com.pofol.admin.board;

import com.pofol.main.board.domain.FaqDto;
import com.pofol.main.board.repository.FaqRepository;
import com.pofol.main.board.service.FaqService;
import com.pofol.main.orders1.order.domain.PageHandler;
import com.pofol.main.orders1.order.domain.SearchOrderCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

@Controller
@RequestMapping("/admin1")
public class AdminFaqController {
    @Autowired
    AdminFaqRepository adminFaqRepository;
    @Autowired
    FaqRepository faqRepository;
    @Autowired
    FaqService faqService;

    @GetMapping("/faq/list")
    public String faqList(SearchOrderCondition sc, Model m, HttpServletRequest request){
        System.out.println("AdminFaqController.faqList()");
        System.out.println("sc = "+sc);

        try {
            int totalCnt = faqRepository.searchResultCnt(sc);
            PageHandler ph = new PageHandler(totalCnt, sc);
            m.addAttribute("ph", ph);
            List list = faqRepository.searchSelectPage(sc);
            m.addAttribute("list", list);
            Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
            m.addAttribute("startOfToday", Long.valueOf(startOfToday.toEpochMilli()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/admin/board/faqList";
    }
    @GetMapping("/faq/write")
    public String faq_write() {
        System.out.println("FAQ 작성 페이지");
        return "/admin/board/faqWrite";
    }
    @PostMapping(value = "/faq/insert")
    public String faq_register(FaqDto dto) {
        System.out.println("FAQ 입력");
        System.out.println("dto : " + dto);

        faqService.insertFaq(dto);
        return "redirect:/admin/board/faqList";
    }

}
