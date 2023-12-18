package com.pofol.main.orders.order.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.dto.DelNotesDto;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.AddressService;
import com.pofol.main.member.service.DelNotesService;
import com.pofol.main.member.service.MemberService;
import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.order.service.OrderDetailService;
import com.pofol.main.orders.order.service.OrderService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {

    private final OrderService orderService;
    private final OrderDetailService ordDetService;
    private final MemberService memService;
    private final AddressService addrService;
    private final DelNotesService delNotesService;

    @GetMapping("/order")
    public String order(Integer period, Model m, HttpSession session){
		System.out.println("OrderController.order()");
//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		String id = authentication.getName();
		// 회원id 정보 session or security
		if (session.getAttribute("id") == null) {
		    session.setAttribute("id", "you11");
		}
		String id = (String) session.getAttribute("id");
		// period
		if(period == null)
			period = 90;
		try {
			Map map = new HashMap();
	        map.put("id", id);
	        map.put("period", period);
	        // 주문 정보 가져오기
			List<OrderDto> list = orderService.selectAllByUserIdAndPeriod(map);
			//list = new ArrayList<>(list.subList(0, 10));
			for(OrderDto dto : list) {
				dto.setImg_url(orderService.selectByOrderMainImg(dto.getOrd_id()));
				//System.out.println(orderService.selectByOrderMainImg(dto.getOrd_id()));
			}
			m.addAttribute("ordDtoList",list);
		} catch (Exception e) {

			e.printStackTrace();
		}
    	return "/order/mypageOrder";
    }

	@GetMapping("/order/{ord_id}")
    public String orderDet(@PathVariable Long ord_id, Model m, HttpServletRequest request){
		System.out.println("OrderController.order()");
		System.out.println("OrderController.order().ord_id = "+ ord_id);
		try {
			// 주문번호에 대한 주문 상세들 List<ordDetDto>
			List<OrderDetailDto> ordDetList = ordDetService.selectAllByOrdId(ord_id);
			for(OrderDetailDto ordDetDto : ordDetList) {
				ordDetDto.setImg_url(ordDetService.selectByOrderDetImg(ordDetDto.getOrd_det_id()));
				ordDetDto.setColumn_sts(ordDetService.selectByCodeName(ordDetDto.getCode_name()));
			}
			m.addAttribute("ordDetList", ordDetList);
			// 배송조회 ( 어디서갖고와야되나?? -> 배송테이블에서 갖고옴 )
			// 결제정보
			OrderDto ordDto = orderService.selectByOrderId(ord_id);
			m.addAttribute("ordDto", ordDto);
			// 주문정보 ( 주문번호, 회원이름, 결제일시=주문일시 )
			MemberDto memDto = memService.select(ordDto.getMem_id());
			m.addAttribute("mem_id", memDto.getMem_id());
			// 배송정보 ( 배송지 배송요청사항 )
			AddressDto addrDto = addrService.getDefaultAddress(memDto.getMem_id());
			DelNotesDto dnDto = delNotesService.getDelNotes(); // mem_id에 대한 배송요청
			System.out.println("addrDto = "+addrDto);
			System.out.println("dnDto = "+dnDto);
			// 추가정보 ( 어디서갖고옴?? )

		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "/order/mypageOrderDet";
    }
}