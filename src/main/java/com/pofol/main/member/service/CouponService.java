package com.pofol.main.member.service;

import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;

import java.util.List;

public interface CouponService {
    List<CouponJoinDto> getCouponJoin(String id);
    CouponDto getCoupon(Long coupon_id);
    MemCouponDto getUnusedCoupon(Long cp_id, String mem_id);
    void modifyCouponStatus(Long cp_id, String mem_id);
}
