package com.pofol.main.member.repository;

import com.pofol.main.member.dto.CouponDownloadDto;
import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CouponRepositoryImpl implements CouponRepository{
    @Autowired
    private SqlSession session;

    private static String namespace = "com.pofol.main.member.couponMapper.";
    @Override
    public CouponDto select_coupon(Long id) {
        return session.selectOne(namespace+"select_coupon", id);
    }

    @Override
    public MemCouponDto select_coupon_mapping(Long id) {
        return session.selectOne(namespace+"select_coupon_mapping", id);
    }

    @Override
    public List<CouponJoinDto> selectMembersWithCoupons(String id) {
        return  session.selectList(namespace+"selectMembersWithCoupons", id);
    }

    @Override
    public List<CouponDownloadDto> select_downloadList() {
        return session.selectList(namespace+"select_downloadList");
    }

    @Override
    public List<CouponDto> select_couponList() {
        return session.selectList(namespace+"select_couponList");
    }

    @Override
    public int update_cp_qty(CouponJoinDto couponJoinDto) {
        return session.update(namespace+"update_cp_qty",couponJoinDto);
    }

    @Override
    public int insert_memCoupon(MemCouponDto memCouponDto) {
        return session.insert(namespace+"insert_memCoupon", memCouponDto);
    }

    @Override
    public int update_minus_cp_qty(int dw_id) {
        return session.update(namespace+"update_minus_cp_qty", dw_id);
    }

    @Override
    public int insert_cp_dw_hi(Map map) {
        return session.insert(namespace+"insert_cp_dw_hi", map);
    }

    @Override
    public List<Integer> select_downloaded_dw_id(String mem_id) {
        return session.selectList(namespace+"select_downloaded_dw_id", mem_id);
    }

    @Override
    public int select_coupon_download_cp_qty(int dw_id) {
        return session.selectOne(namespace+"select_coupon_download_cp_qty", dw_id);
    }



    public MemCouponDto selectUnusedCoupon(Long cp_id, String mem_id) throws Exception{
        Map<String,Object> map = new HashMap<>();
        map.put("cp_id",cp_id);
        map.put("mem_id",mem_id);
        return session.selectOne(namespace+"selectUnusedCoupon",map);
    }

    @Override
    public int updateMemberCouponStatus(MemCouponDto memCouponDto) {
        return session.update(namespace + "updateMemberCouponStatus", memCouponDto);
    }

}
