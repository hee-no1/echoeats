package com.pofol.main.board.controller;

import com.pofol.main.board.domain.NoticeDto;
import com.pofol.main.board.domain.PageHandler;
import com.pofol.main.board.domain.SearchBoardCondition;
import com.pofol.main.board.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

@Controller
@RequestMapping("/board")
public class NoticeController {
    @Autowired
    private NoticeService noticeService;

    @RequestMapping(value = "/notice")
    public String notice(SearchBoardCondition sc, Model m) throws Exception {
        try {
            int totalCnt = noticeService.getSearchResultCnt(sc);
            m.addAttribute("totalCnt", totalCnt);

            PageHandler pageHandler = new PageHandler(totalCnt, sc);

            List<NoticeDto> list = noticeService.getSearchResultPage(sc);
            m.addAttribute("list", list);
//            System.out.println("list: " + list);
            m.addAttribute("ph", pageHandler);

            Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
            m.addAttribute("startOfToday", startOfToday.toEpochMilli());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/board/notice";
    }

    @RequestMapping("/notice_view")
    public String notice_view(NoticeDto dto, Model m) throws Exception {
        System.out.println("dto : " + dto);

        NoticeDto notice = noticeService.getNotice(dto);
        m.addAttribute("notice", notice);
        System.out.println("notice : " + notice);

        return "/board/notice_view";
    }
    @RequestMapping("/notice_write")
    public String notice_write() {
        return "/board/notice_write";
    }
    @RequestMapping(value = "/insertNotice", method = RequestMethod.POST)
    public String insertNotice(NoticeDto dto) throws Exception {
        System.out.println("dto : " + dto);

        noticeService.insertNotice(dto);

        return "redirect:/board/notice";
    }
    @RequestMapping("/notice_modify")
    public String notice_modify(NoticeDto dto, Model model) throws Exception {
        NoticeDto notice = noticeService.getNotice(dto);
        model.addAttribute("notice", notice);
        System.out.println("notice : " + notice);
        return "/board/notice_modify";
    }
    @RequestMapping(value = "/updateNotice", method = RequestMethod.POST)
    public String updateNotice(NoticeDto dto, int notice_id) throws Exception {
        System.out.println(notice_id);
        noticeService.updateNotice(dto);
        System.out.println("dto : " + dto);

        return "redirect:/board/notice";
    }
    @RequestMapping("/deleteNotice")
    public String deleteNotice(NoticeDto dto) throws Exception {
        System.out.println("dto : " + dto);

        noticeService.deleteNotice(dto);

        return "redirect:/board/notice";
    }
}
