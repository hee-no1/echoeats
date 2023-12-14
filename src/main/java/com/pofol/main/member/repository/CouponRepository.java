package com.pofol.main.member.repository;

import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;

import java.util.List;

public interface CouponRepository {
    CouponDto select_coupon (Long id);
    MemCouponDto select_coupon_mapping(Long id);

    List<CouponJoinDto> selectMembersWithCoupons(String id);
}
