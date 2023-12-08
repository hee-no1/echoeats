package com.pofol.main.member;

import com.pofol.main.member.dto.*;
import com.pofol.main.member.repository.CouponRepository;
import com.pofol.main.member.repository.DelNotesRepository;
import com.pofol.main.member.repository.GradeRepository;
import com.pofol.main.member.service.CouponService;
import com.pofol.main.member.service.DelNotesService;
import com.pofol.main.member.service.GradeService;
import com.pofol.main.member.service.MemberService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import static org.junit.jupiter.api.Assertions.assertTrue;

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
    MemberRepository memberRepository;
    @Autowired
    MemberService memberService;

    @Autowired
    GradeRepository gradeRepository;
    @Autowired
    GradeService gradeService;

    @Autowired
    DelNotesRepository delNotesRepository;
    @Autowired
    DelNotesService delNotesService;

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

    @Test
    public void re_check_grade() throws Exception {
        List<MemberDto> memberDtos = memberRepository.checkGrade("2023-12-04");
        System.out.println(memberDtos);
        assertTrue(memberDtos.size()==6);
    }

    @Test
    public void se_check_grade() throws Exception{
        List<MemberDto> memberDtos = memberService.check_grade("2023-12-04");
        System.out.println(memberDtos);
        assertTrue(memberDtos.size()==6);
    }

//    @Test
//    public void re_insert_delnotes(){
//        DelNotesDto dto = new DelNotesDto("asd123", "우형주", "010-4949-4949", "기타 장소", "경비실 호출", "오전 7시","asd123","asd123");
//        int a =delNotesRepository.insert_delNotes(dto);
//        System.out.println(a);
//    }

//    @Test
//    public void se_insert_delnotes(){
//        DelNotesDto dto = new DelNotesDto("asd125", "우형주", "010-4949-4949", "기타 장소", "경비실 호출", "오전 7시","asd123","asd123");
//        int a = delNotesService.insert_delNotes(dto);
//        assertTrue(a ==1);
//    }

    @Test
    public void re_update_delnotes(){
        DelNotesDto dto = new DelNotesDto("asd125", "우형주", "010-4949-4949", "re_update", "경비실 호출", "오전 7시","asd123","asd123");
        int i = delNotesRepository.update_delNotes(dto);
        System.out.println(i);
        assertTrue(i==1);
    }

    @Test
    public void se_update_delnotes(){
        DelNotesDto dto = new DelNotesDto("asd125", "우형주", "010-4949-4949", "re_update", "경비실 호출", "오전 7시","admin123","admin123");
        int i = delNotesService.update_delNotes(dto);
        System.out.println(i);
        assertTrue(i==1);
    }

    @Test
    public void re_select_delnotes(){
        DelNotesDto dto = delNotesRepository.select_delNotes("asd125");
        System.out.println(dto);
        assertTrue(dto.getMem_id().equals("asd125"));
    }

    @Test
    public void se_select_delnotes(){
        DelNotesDto dto = delNotesService.select_delNotes("asd125");
        System.out.println(dto);
        assertTrue(dto.getMem_id().equals("asd125"));
    }


}