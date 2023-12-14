package com.pofol.main.member.controller;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/address")
public class AddressController {
    @Autowired
    AddressService addressService;

    //배송지 관리 페이지
    @GetMapping("/")
    public String address(HttpServletRequest request, Model m) throws Exception {
        if(!loginCheck(request)){
            return "member/login_form";
        }else{
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            List<AddressDto> addressDtos = addressService.getAddresses(authentication.getName());
            m.addAttribute("list",addressDtos);
            return "member/addr_form";}
    }

    // 상세주소 페이지
    @GetMapping("/detail")
    public String detailAddr() {return "member/detailAddr_form";}

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

    @PostMapping("/delete")
    public String deleteAddr(@RequestParam(name = "addr_id") String addr_id) throws Exception {
        addressService.removeAddress(addr_id);
        return "redirect:/address/";
    }

    private boolean loginCheck(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        return session!=null && session.getAttribute("mem_id")!=null;
    }

}
