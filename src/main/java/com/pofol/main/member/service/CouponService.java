package com.pofol.main.member.service;

import com.pofol.main.member.dto.CouponDownloadDto;
import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;

import java.util.List;

public interface CouponService {
    List<CouponJoinDto> getCouponJoin(String id);
    List<CouponDownloadDto> showDownloadList();

    int update_cp_qty(CouponJoinDto couponJoinDto);
    int insert_memCoupon(MemCouponDto memCouponDto);

    int update_minus_cp_qty(int dw_id);
    List<Integer> select_downloaded_dw_id(String mem_id);

    CouponDto getCoupon(Long coupon_id);
    MemCouponDto getUnusedCoupon(Long cp_id, String mem_id);
    void modifyCouponStatus(Long cp_id, String mem_id);

}
