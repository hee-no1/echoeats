package com.pofol.main.member.repository;

import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CouponRepositoryImpl implements CouponRepository{
    @Autowired
    private SqlSession session;

    private static String namespace = "com.pofol.main.member.couponMapper.";
    @Override
    public CouponDto select_coupon(int id) {
        return session.selectOne(namespace+"select_coupon", id);
    }

    @Override
    public MemCouponDto select_coupon_mapping(int id) {
        return session.selectOne(namespace+"select_coupon_mapping", id);
    }

    @Override
    public List<CouponJoinDto> selectMembersWithCoupons(String id) {
        return  session.selectList(namespace+"selectMembersWithCoupons", id);
    }
}
