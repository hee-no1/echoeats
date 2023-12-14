package com.pofol.main.member.task;

import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.GradeService;
import com.pofol.main.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class GradeTask {

    @Autowired
    MemberService memberService;

    @Autowired
    GradeService gradeService;


    @Scheduled(cron = "0 40 14 * * *")
    //@Scheduled(cron = "*/10 * * * * *")
    public void testMethod() throws Exception {
        System.out.println("배치 실행중~~~~~~~~~~~~~~~~");

        //오늘 날짜보다 한 달 전인 날짜를 가져온다
        //이 날짜를 이용하여 member의 update_date와 일치한 회원들을 가져온다
        //반복문 안에 회원들을 하나씩꺼내서 전월 사용한 금액을 조회한다
        //등급 계산 메서드에 (결제금액, 등급Dto)를 넣는다
        //리턴받은 등급을 그회원의 등급에 update한다

        int money = 250000;
        int[] grade = new int[5];
        String[] grade_name = new String[5];
        String member_grade = "";
        int i = 4;


        List<GradeDto> gradeDtos = gradeService.show_list();
        for (GradeDto gradeDto : gradeDtos) {
            System.out.println(gradeDto);
            grade[i] = gradeDto.getGd_condition();
            grade_name[i]=gradeDto.getGd_name();
            i--;
        }

        for(int j=4 ; j>=0 ; j--){
            System.out.println(grade_name[j]+" : "+grade[j]);
        }
        //메서드로 만들 것 (전월 결제 금액, gradeDtos)
        if(0<= money && money <=grade[0]){
            member_grade = grade_name[0];
        } else if (grade[0]< money && money<=grade[1]) {
            member_grade = grade_name[1];
        } else if (grade[1]< money && money<=grade[2]) {
            member_grade = grade_name[2];
        } else if (grade[2]< money && money<=grade[3]){
            member_grade = grade_name[3];
        } else if (grade[3]< money && money<=grade[4] || grade[4]< money){
            member_grade = grade_name[4];
        }


        List<MemberDto> memberDtos = memberService.check_grade("2023-12-04");
//        for (MemberDto memberDto : memberDtos) {
//            System.out.println(memberDto);
//        }


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