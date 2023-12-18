package com.pofol.main.member.repository;

import com.pofol.main.member.dto.CouponDownloadDto;
import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;

import java.util.List;
import java.util.Map;

public interface CouponRepository {
    CouponDto select_coupon (Long id);
    MemCouponDto select_coupon_mapping(Long id);

    List<CouponJoinDto> selectMembersWithCoupons(String id);

    List<CouponDownloadDto> select_downloadList();

    List<CouponDto> select_couponList();

    int update_cp_qty(CouponJoinDto couponJoinDto);

    int insert_memCoupon(MemCouponDto memCouponDto);
    int update_minus_cp_qty(int dw_id);
    int insert_cp_dw_hi(Map map);

    List<Integer> select_downloaded_dw_id(String mem_id);
    int select_coupon_download_cp_qty(int dw_id);
    MemCouponDto selectUnusedCoupon(Long cp_id, String mem_id) throws Exception;
    int updateMemberCouponStatus(MemCouponDto memCouponDto);
}
