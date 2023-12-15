package com.pofol.main.member.controller;

import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.service.CouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class CouponController {

    @Autowired
    CouponService couponService;

    @GetMapping("/coupon")
    public String boardJoin(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String id = authentication.getName();
        List<CouponJoinDto> coupon = couponService.getCouponJoin(id);
        System.out.println(coupon);
        for (CouponJoinDto couponJoinDto : coupon) {
            if(couponJoinDto.getCp_sts().equals("UNUSED")){
                couponJoinDto.setCp_sts("사용가능");
            } else if (couponJoinDto.getCp_sts().equals("USED")) {
                couponJoinDto.setCp_sts("사용 완료");
            }else if (couponJoinDto.getCp_sts().equals("EXPIRES")) {
                couponJoinDto.setCp_sts("기간 만료");
            }
        }

        model.addAttribute("coupon", coupon);
        return "member/coupon";
    }

}
