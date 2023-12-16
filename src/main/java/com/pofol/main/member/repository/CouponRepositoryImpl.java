package com.pofol.main.member.repository;

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
