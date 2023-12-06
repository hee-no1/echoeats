package com.pofol.main.member.controller;

import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.service.CouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CouponController {

    @Autowired
    CouponService couponService;

    @GetMapping("/coupon")
    public String boardJoin(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String id = authentication.getName();
        List<CouponJoinDto> coupon = couponService.getCoupon(id);
        System.out.println(coupon);
        model.addAttribute("coupon", coupon);
        return "member/coupon";
    }

}
