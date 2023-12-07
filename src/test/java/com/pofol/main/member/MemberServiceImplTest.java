package com.pofol.main.member;

import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.dto.MemCouponDto;
import com.pofol.main.member.repository.CouponRepository;
import com.pofol.main.member.repository.GradeRepository;
import com.pofol.main.member.service.CouponService;
import com.pofol.main.member.service.GradeService;
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
    @Autowired
    CouponService couponService;

    @Autowired
    GradeRepository gradeRepository;
    @Autowired
    GradeService gradeService;

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
        List<CouponJoinDto> memCouponDtos = couponRepository.selectMembersWithCoupons("admin123");
        System.out.println(memCouponDtos);
    }

    @Test
    public void main4(){
        List<CouponJoinDto> admin123 = couponService.getCoupon("user123");
        System.out.println(admin123);
    }

    @Test
    public void main5(){
        GradeDto admin123 = gradeRepository.select_grade("admin123");
        System.out.println(admin123);
    }

    @Test
    public void main6(){
        GradeDto admin123 = gradeService.show_grade("admin123");
        System.out.println(admin123);
    }

    @Test
    public void main7(){
        List<GradeDto> gradeDtos = gradeRepository.select_grade_list();
        System.out.println(gradeDtos);
    }

    @Test
    public void service_show_list(){
        List<GradeDto> gradeDtos = gradeService.show_list();
        System.out.println(gradeDtos);
    }


}