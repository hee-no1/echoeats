package com.pofol.main.member.service;

import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;

import java.util.List;

public interface CouponService {
    List<CouponJoinDto> getCoupon(String id);
}
