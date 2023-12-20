package com.pofol.main.member.controller;

import com.pofol.main.member.dto.CouponDownloadDto;
import com.pofol.main.member.dto.CouponDto;
import com.pofol.main.member.dto.CouponJoinDto;
import com.pofol.main.member.dto.MemCouponDto;
import com.pofol.main.member.repository.CouponRepository;
import com.pofol.main.member.service.CouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.net.ContentHandler;
import java.text.ParseException;
import java.util.*;

@Controller
public class CouponController {

    @Autowired
    CouponService couponService;

    @Autowired
    CouponRepository couponRepository;

    @GetMapping("/coupon")
    public String boardJoin(Model model) {
        //현재 인증된 회원의 아이디를 가져온다
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String id = authentication.getName();

        //회원이 보유한 쿠폰들을 가져온다
        List<CouponJoinDto> coupon = couponService.getCouponJoin(id);

        for (CouponJoinDto couponJoinDto : coupon) {
            if(couponJoinDto.getCp_sts().equals("UNUSED")){
                couponJoinDto.setCp_sts("미사용");
            } else if (couponJoinDto.getCp_sts().equals("USED")) {
                couponJoinDto.setCp_sts("사용 완료");
            }else if (couponJoinDto.getCp_sts().equals("EXPIRES")) {
                couponJoinDto.setCp_sts("기간 만료");
            }
        }
        //다운로드 쿠폰 테이블
        List<CouponDownloadDto> couponDownloadDtos = couponService.showDownloadList();

        //내가 다운 받았던 dw_id들
        List<Integer> integers = couponService.select_downloaded_dw_id(authentication.getName());

        model.addAttribute("already_downloaded", integers);
        model.addAttribute("download", couponDownloadDtos);

        model.addAttribute("coupon", coupon);

        model.addAttribute("mypage", "coupon");
        return "member/mypage";
    }


    @GetMapping("/coupon_dw")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> coupon_dwGet(long cp_id, int dw_id, Authentication authentication, HttpServletRequest request) throws ParseException {
        System.out.println(cp_id);
        System.out.println(dw_id);
        //쿠폰id 로 일단 회원 보유 여부를 따진다
        //있으면 -> 수량을 update,  없으면 -> insert

        if(authentication.getName() != null){

            //dw_id로 현재 다운 받을 수 있는 수량 확인
            //수량 > 0 면 다운 가능, 수량 <= 0 다운 불가
            int check_coupon_qyy = couponRepository.select_coupon_download_cp_qty(dw_id);
            System.out.println("check_coupon_qyy : "+check_coupon_qyy);

            if(check_coupon_qyy > 0) {
                System.out.println("쿠폰 수량이 0보다 큼");
                //받은 기록이 있으면 다운x
                List<Integer> integers1 = couponService.select_downloaded_dw_id(authentication.getName());
                System.out.println("integers1 : " + integers1);
                boolean is_downloaded = integers1.stream().anyMatch(a -> a == dw_id);
                System.out.println("is_downloaded : " + is_downloaded);

                if (!is_downloaded) {
                    System.out.println("다운 받은 적이 없음");

                    System.out.println("매개변수");
                    List<CouponJoinDto> couponJoin = couponService.getCouponJoin(authentication.getName());
                    boolean have_coupon = couponJoin.stream().anyMatch(a -> a.getCp_id().equals(cp_id));
                    CouponJoinDto couponJoinDto = null;
                    //두 개의 브라우저를 열어서 한쪽 다운로드 후 다른 한쪽 다운로드
                    //dw_id로 이 회원이 쿠폰을 다운받은 적이 있는지 확인
                    //있으면 x, 없으면 밑에 로직 수행
                    if (have_coupon) {
                        couponJoinDto = new CouponJoinDto();
                        couponJoinDto.setMem_id(authentication.getName());
                        couponJoinDto.setCp_id(cp_id);
                        int result = couponService.update_cp_qty(couponJoinDto);
                        System.out.println("update : " + result);
                    } else {
                        MemCouponDto memCouponDto = new MemCouponDto(authentication.getName(), cp_id);
                        int result = couponService.insert_memCoupon(memCouponDto);
                        System.out.println("insert : " + result);
                    }


                    //쿠폰테이블에 있는 수량 -1
                    int dw_id_result = couponRepository.update_minus_cp_qty(dw_id);
                    System.out.println("dw_id_result : " + dw_id_result);

                    //쿠폰 다운 이력에 추가
                    Map<String, Object> map = new HashMap<>();
                    map.put("mem_id", authentication.getName());
                    map.put("dw_id", dw_id);
                    int insert_cp_dw_hi_result = couponRepository.insert_cp_dw_hi(map);
                    System.out.println("insert_cp_dw_hi_result : " + insert_cp_dw_hi_result);


                    //쿠폰 다운 이력 테이블과 쿠폰 다운 테이블의 중복된 dw_id들을 반환
                    //숫자들을 jsp로 반환한다
                    List<Integer> integers = couponService.select_downloaded_dw_id(authentication.getName());
                    System.out.println("다운 받았던 dw_id : " + integers);

                    //jsp에 넘길 쿠폰 수량
                    //한 번 더 서용하는 이유는 위 코드가 실행될 동안 수량이 변경될 수 있기 때문이다
                    int download_cp_qty = couponRepository.select_coupon_download_cp_qty(dw_id);


                    //쿠폰 가져오기
                    //문제 여기에 기간과 사용 가능이 없다는 것이다
                    //CouponDto couponDto = couponRepository.select_coupon(cp_id);

                    CouponJoinDto couponJoinDto1 = null;
                    List<CouponJoinDto> couponJoin1 = couponService.getCouponJoin(authentication.getName());
                    for (CouponJoinDto joinDto : couponJoin1) {
                        if (joinDto.getCp_id().equals(cp_id)) {
                            couponJoinDto1 = joinDto;
                        }
                    }
                    System.out.println("couponJoinDto1 : " + couponJoinDto1);


                    //넘길 데이터
                    Map<String, Object> responseMap = new HashMap<>();
                    responseMap.put("downloaded_dw_id_list", integers);   //수정 필요, 이미 쿠폰을 출력했을 때
                    responseMap.put("download_cp_qty", download_cp_qty);  //내가 받은 쿠폰의 남은 수량
                    responseMap.put("download_dw_id", dw_id);  //내가 다운받은 쿠폰 아이디 (수량 최신화를 위해 사용)
                    responseMap.put("coupon_detail", couponJoinDto1);

                    //현재 보유중인 쿠폰 수량 최신화
                    int mem_have_cp_qty = couponService.member_cp_qty_count(authentication.getName());
                    request.getSession().setAttribute("mem_have_cp_qty", mem_have_cp_qty);
                    responseMap.put("mem_have_cp_qty", mem_have_cp_qty);

                    return new ResponseEntity<>(responseMap, HttpStatus.OK);

                }//if(!is_downloaded)

                //다운 받은 이력이 있는 경우

                Map<String, Object> errorMap = new HashMap<>();
                errorMap.put("message", "이미 다운받은 쿠폰입니다.");
                errorMap.put("redirect", "/coupon");
                return new ResponseEntity<>(errorMap, HttpStatus.BAD_REQUEST);

            }//if(check_coupon_qyy > 0)

            Map<String, Object> errorMap = new HashMap<>();
            errorMap.put("message", "받을 수 있는 쿠폰이 없습니다.");
            errorMap.put("redirect", "/coupon");
            return new ResponseEntity<>(errorMap, HttpStatus.BAD_REQUEST);

        }//if(authentication.getName() != null)



        Map<String, Object> errorMap = new HashMap<>();
        errorMap.put("message", "예상치 못한 오류가 발생하였습니다.");
        errorMap.put("redirect", "/coupon");
        return new ResponseEntity<>(errorMap, HttpStatus.INTERNAL_SERVER_ERROR);
    }


}

//해야할 거
//1. 이미 받은 쿠폰입니다. (문구 추가)