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


    //@Scheduled(cron = "0 40 14 * * *")
    @Scheduled(cron = "*/10 * * * * *")
    public void testMethod() throws Exception {
        System.out.println("배치 실행중~~~~~~~~~~~~~~~~");

        //오늘 날짜보다 한 달 전인 날짜를 가져온다
        //이 날짜를 이용하여 member의 update_date와 일치한 회원들을 가져온다
        //반복문 안에 회원들을 하나씩꺼내서 전월 사용한 금액을 조회한다
        //등급 계산 메서드에 (결제금액, 등급Dto)를 넣는다
        //리턴받은 등급을 그 회원의 등급에 update한다





        List<GradeDto> gradeDtos = gradeService.show_list();


        LocalDate currentDate = LocalDate.now();

        LocalDate dayPlusOne = currentDate.plusDays(1);

        // 전 달 날짜 계산
        LocalDate MonthMinusOne = currentDate.minusMonths(1);


        String currentDateStr = String.valueOf(currentDate);
        String dayPlusOneStr = String.valueOf(dayPlusOne);
        String MonthMinusOneStr = String.valueOf(MonthMinusOne);



        List<MemberDto> memberDtos = memberService.check_grade(currentDateStr);
        for (MemberDto memberDto : memberDtos) {
            System.out.println(memberDto);
            String memId = memberDto.getMem_id();
            PaymentDto paymentDto = new PaymentDto(memId, MonthMinusOneStr,dayPlusOneStr);//nullpointer나면 어떻게 하냐?
            Integer i1 = paymentRepository.selectTotalPrice(paymentDto);
            System.out.println("i1 : "+i1);
            String s = cal_grade(i1, gradeDtos);
            System.out.println(s);
            memberDto.setGd_name(s);
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


//    Map<String, Integer> result = list.stream()
//            .sorted((a1, a2) -> Integer.compare(a1.getAge(), a2.getAge()))
//            .collect(Collectors.toMap(A::getName, A::getAge));
//



////LocalDate currentDate = LocalDate.now();
//
//    // 주어진 날짜 문자열
//    String dateString = "2023-01-12";
//
//    // 주어진 날짜 문자열을 LocalDate로 변환
//    LocalDate currentDate = LocalDate.parse(dateString);
//
//    // 전 달 날짜 계산
//    LocalDate lastMonthDate = currentDate.minusMonths(1);
//
//    // 날짜 포맷 지정 (예: "yyyy-MM-dd")
//    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//
//    // 전 달 날짜를 원하는 형식으로 출력
//    String lastMonthDateString = lastMonthDate.format(formatter);
//        System.out.println("전 달 날짜: " + lastMonthDateString);