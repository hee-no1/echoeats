package com.pofol.main.member.task;

import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.GradeService;
import com.pofol.main.member.service.MemberService;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.orders.payment.repository.PaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Component
public class GradeTask {

    @Autowired
    MemberService memberService;

    @Autowired
    GradeService gradeService;

    @Autowired
    PaymentRepository paymentRepository;


    @Scheduled(cron = "0 0 0 * * *")
    //@Scheduled(cron = "*/10 * * * * *")
    public void testMethod() throws Exception {
        System.out.println("================등급 갱신================");



        //db에서 등급을 가져온다
        List<GradeDto> gradeDtos = gradeService.show_list();

        //오늘 날짜를 가져온다(등급갱신일을 조회하는 데 사용)
        LocalDate currentDate = LocalDate.now();

        //밑에 두 날짜는 한 달동안 총결제한 금액을 가져오는데 사용
        //오늘 날짜에서 하루를 더함
        LocalDate dayPlusOne = currentDate.plusDays(1);
        //전 달 날짜
        LocalDate MonthMinusOne = currentDate.minusMonths(1);

        //문자열로 조회하기 때문에 모두 문자열로 형변환
        String currentDateStr = String.valueOf(currentDate);
        String dayPlusOneStr = String.valueOf(dayPlusOne);
        String MonthMinusOneStr = String.valueOf(MonthMinusOne);


        //등급갱신일이 오늘 날짜인 회원들을 조회
        List<MemberDto> memberDtos = memberService.check_grade(currentDateStr);
        for (MemberDto memberDto : memberDtos) {
            System.out.println(memberDto);
            String memId = memberDto.getMem_id();
            //회원id, 전 달 날짜, 하루를 더한 날짜를 이용해서 한 달동안 결제한 금액을 가져온다
            PaymentDto paymentDto = new PaymentDto(memId, MonthMinusOneStr,dayPlusOneStr);//nullpointer나면 어떻게 하냐?
            Integer i1 = paymentRepository.selectTotalPrice(paymentDto);
            System.out.println("i1 : "+i1);
            //결제한 금액, 등급dto를 등급을 계산
            String s = cal_grade(i1, gradeDtos);
            System.out.println(s);
            //반환된 등급을 memberDto에 넣고
            memberDto.setGd_name(s);
            //회원 등급 수정
            int update = memberService.update_grade(memberDto);
        }



    }

    public String cal_grade(int money,List<GradeDto> gradeDtos ){
        String member_grade = "";

        for (GradeDto gradeDto : gradeDtos) {
            if(money>= gradeDto.getGd_condition()){
                member_grade = gradeDto.getGd_name();
                break;
            }
        }


        return member_grade;
    }



}
