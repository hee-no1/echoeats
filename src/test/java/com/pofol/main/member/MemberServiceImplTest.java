package com.pofol.main.member;

import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;
import com.pofol.main.member.repository.CouponRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.pofol.main.member.repository.MemberRepository;

import java.util.List;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MemberServiceImplTest {

    @Autowired
    CouponRepository couponRepository;
//    @Test
//    public void signin() throws Exception {
//        MemberDto memberDto = new MemberDto("asdfasdfqs","asdf","Doe","asdf@naver.com","01030359787","상남자","1998/10/12","종각역","Y","a","a","asdfasdfqs","asdfasdfqs","asdfasdfqs","asdfasdfqs","a","a");
//       int result = memberRepository.insertMember(memberDto);
//       assertTrue(result ==1);
//    }

    @Test
    public void main(){
        CouponDto couponDto = couponRepository.select_coupon(1);
        System.out.println(couponDto);
    }

    @Test
    public void main2(){
        MemCouponDto memCouponDto = couponRepository.select_coupon_mapping(1);
        System.out.println(memCouponDto);
    }

    @Test
    public void main3(){
        List<CouponJoinDto> memCouponDtos = couponRepository.selectMembersWithCoupons();
        System.out.println(memCouponDtos);
    }


}