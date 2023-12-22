package com.pofol.main.member.controller;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.AddressService;
import com.pofol.main.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/address")
public class AddressController {
    @Autowired
    AddressService addressService;
    @Autowired
    MemberService memberService;

    //배송지 관리 페이지
    @GetMapping("/")
    public String address(HttpServletRequest request, Model m) throws Exception {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        List<AddressDto> addressDtos = addressService.getAddresses(authentication.getName());
        m.addAttribute("list",addressDtos);
        MemberDto memberDto = memberService.select(authentication.getName());
        m.addAttribute("memberDto",memberDto);
        m.addAttribute("mypage","address");
        return "member/mypage";
    }

    // 상세주소 페이지
    @GetMapping("/detail")
    public String detailAddr(Model m) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        m.addAttribute("mem_id",authentication.getName());
        return "member/detailAddr_form";
    }

    // 주소, 상세주소 등록
    @PostMapping("/detail")
    @ResponseBody
    public AddressDto sendAddr(@RequestBody AddressDto addressDto) throws Exception {
        addressService.regAddress(addressDto);
        return addressDto;
    }

    //상세주소, 받으실 분, 전화번호, 기본배송지 페이지
    @GetMapping("/update")
    public String updateAddr(HttpServletRequest request, Model m,@RequestParam(name = "addr_id") String addr_id) throws Exception {
        AddressDto addressDto = addressService.getAddress(addr_id);
        m.addAttribute("addressDto",addressDto);
        return "member/updateAddr_form";
    }

    //상세주소, 받으실 분, 전화번호, 기본배송지 업데이트
    @PostMapping("/update")
    @ResponseBody
    public AddressDto updateAddr(@RequestBody AddressDto addressDto) throws Exception {
        System.out.println(addressDto.toString());
        addressService.modifyAddress(addressDto);
        return addressDto;
    }

    @RequestMapping(value = "/delete", method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public ResponseEntity<String> deleteAddr(@RequestParam(name = "addr_id") String addr_id) throws Exception {
        addressService.removeAddress(addr_id);
        return ResponseEntity.ok("success");
    }

}
