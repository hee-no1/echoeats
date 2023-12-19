package com.pofol.main.member.service;

import com.pofol.main.member.dto.CouponDownloadDto;
import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;
import com.pofol.main.member.repository.CouponRepository;
import com.pofol.main.orders.payment.repository.PaymentDiscountRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CouponServiceImpl implements CouponService{

    private final CouponRepository couponRepository;
    @Override
    public List<CouponJoinDto> getCouponJoin(String id) {

       try{
            return couponRepository.selectMembersWithCoupons(id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
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

        
    

    @Override
    public CouponDto getCoupon(Long coupon_id) {
        try{
            return couponRepository.select_coupon(coupon_id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    @Override
    public MemCouponDto getUnusedCoupon(Long cp_id, String mem_id) {
        try {
            return couponRepository.selectUnusedCoupon(cp_id, mem_id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    @Override
    public void modifyCouponStatus(Long cp_id, String mem_id) {
        try {
            MemCouponDto memCoupon = couponRepository.selectUnusedCoupon(cp_id, mem_id);//멤버 쿠폰 데이블 가지고 오기
            int cp_qty = memCoupon.getCp_qty(); //쿠폰 수량

            if(cp_qty > 1){
                memCoupon.setCp_qty(--cp_qty);
            } else if (cp_qty == 1){
                memCoupon.setCp_qty(--cp_qty);
                memCoupon.setCp_sts("USED");
            } else {
                throw new RuntimeException("쿠폰 상태와 수량에 문제가 발생했습니다.");
            }

            couponRepository.updateMemberCouponStatus(memCoupon);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }


}
