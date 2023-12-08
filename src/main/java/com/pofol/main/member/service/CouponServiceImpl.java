package com.pofol.main.member.service;

import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.repository.CouponRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CouponServiceImpl implements CouponService{

    @Autowired
    CouponRepository couponRepository;
    @Override
    public List<CouponJoinDto> getCoupon(String id) {
        return couponRepository.selectMembersWithCoupons(id);
    }
}
