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
import java.net.ContentHandler;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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
        System.out.println(coupon);

        for (CouponJoinDto couponJoinDto : coupon) {
            if(couponJoinDto.getCp_sts().equals("UNUSED")){
                couponJoinDto.setCp_sts("사용가능");
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
        return "member/coupon";
    }


    @GetMapping("/coupon_dw")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> coupon_dwGet(long cp_id, String cp_del_date, int dw_id, Authentication authentication) throws ParseException {
        System.out.println(cp_id);
        System.out.println(cp_del_date);
        System.out.println(dw_id);
        //쿠폰id 로 일단 회원 보유 여부를 따진다
        //있으면 -> 수량을 update,  없으면 -> insert


        if(authentication.getName() != null){
            System.out.println("매개변수");
            List<CouponJoinDto> couponJoin = couponService.getCouponJoin(authentication.getName());
            boolean have_coupon = couponJoin.stream().anyMatch(a -> a.getCp_id().equals(cp_id));
            CouponJoinDto couponJoinDto = null;
            if(have_coupon){
                couponJoinDto = new  CouponJoinDto();
                couponJoinDto.setMem_id(authentication.getName());
                couponJoinDto.setCp_id(cp_id);
                int result = couponService.update_cp_qty(couponJoinDto);
                System.out.println("update : "+result);
            }else{
                MemCouponDto memCouponDto = new MemCouponDto(authentication.getName(), cp_id);
                int result = couponService.insert_memCoupon(memCouponDto);
                System.out.println("insert : "+result);
            }


            //쿠폰테이블에 있는 수량 -1
            int dw_id_result = couponRepository.update_minus_cp_qty(dw_id);
            System.out.println("dw_id_result : "+dw_id_result);

            //쿠폰 다운 이력에 추가
            Map<String, Object> map= new HashMap<>();
            map.put("mem_id", authentication.getName());
            map.put("dw_id", dw_id);
            int insert_cp_dw_hi_result = couponRepository.insert_cp_dw_hi(map);
            System.out.println("insert_cp_dw_hi_result : "+ insert_cp_dw_hi_result);


            //쿠폰 다운 이력 테이블과 쿠폰 다운 테이블의 중복된 dw_id들을 반환
            //숫자들을 jsp로 반환한다
            List<Integer> integers = couponService.select_downloaded_dw_id(authentication.getName());
            System.out.println("다운 받았던 dw_id : "+integers);

            //jsp에 넘길 쿠폰 수량
            int download_cp_qty = couponRepository.select_coupon_download_cp_qty(dw_id);


            //쿠폰 가져오기
            //문제 여기에 기간과 사용 가능이 없다는 것이다
            //CouponDto couponDto = couponRepository.select_coupon(cp_id);

            CouponJoinDto couponJoinDto1 = null;
            List<CouponJoinDto> couponJoin1 = couponService.getCouponJoin(authentication.getName());
            for (CouponJoinDto joinDto : couponJoin1) {
                if(joinDto.getCp_id().equals(cp_id)){
                    couponJoinDto1 = joinDto;
                }
            }
            System.out.println("couponJoinDto1 : "+couponJoinDto1);


            //넘길 데이터
            Map<String, Object> responseMap = new HashMap<>();
            responseMap.put("downloaded_dw_id_list", integers);   //수정 필요, 이미 쿠폰을 출력했을 때
            responseMap.put("download_cp_qty", download_cp_qty);  //내가 받은 쿠폰의 남은 수량
            responseMap.put("download_dw_id", dw_id);  //내가 다운받은 쿠폰 아이디 (수량 최신화를 위해 사용)
            responseMap.put("coupon_detail", couponJoinDto1);

            return new ResponseEntity<>(responseMap, HttpStatus.OK);

        }


        //하나의 서비스로 묶어라
        return null;
    }


}
