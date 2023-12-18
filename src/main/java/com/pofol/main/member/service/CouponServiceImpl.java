package com.pofol.main.member.service;

import com.pofol.main.member.dto.CouponDownloadDto;
import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;
import com.pofol.main.member.repository.CouponRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CouponServiceImpl implements CouponService{

    @Autowired
    CouponRepository couponRepository;
    @Override
    public List<CouponJoinDto> getCouponJoin(String id) {
        return couponRepository.selectMembersWithCoupons(id);
    }

    @Override
    public List<CouponDownloadDto> showDownloadList() {
        return couponRepository.select_downloadList();
    }

    @Override
    public int update_cp_qty(CouponJoinDto couponJoinDto) {
        return couponRepository.update_cp_qty(couponJoinDto);
    }

    @Override
    public int insert_memCoupon(MemCouponDto memCouponDto) {
        return couponRepository.insert_memCoupon(memCouponDto);
    }

    @Override
    public int update_minus_cp_qty(int dw_id) {
        return couponRepository.update_minus_cp_qty(dw_id);
    }

    @Override
    public List<Integer> select_downloaded_dw_id(String mem_id) {
        return couponRepository.select_downloaded_dw_id(mem_id);
    }
}
