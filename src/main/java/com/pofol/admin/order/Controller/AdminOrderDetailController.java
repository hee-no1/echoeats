package com.pofol.admin.order.Controller;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pofol.admin.order.Repository.AdminOrderDetailRepository;
import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.main.orders.order.domain.OrderDetailDto;
import com.pofol.main.orders.order.domain.PageHandler;
import com.pofol.main.orders.order.domain.SearchOrderCondition;
import com.pofol.main.orders.order.service.OrderDetailService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class AdminOrderDetailController {
	
	private final AdminOrderDetailRepository adminOrdDetailRepo;
	private final OrderDetailService ordDetailServ;
	
	@GetMapping("/orderDetail/list")
    public String orderDetailList(SearchOrderCondition sc, Model m, HttpServletRequest request){
		System.out.println("AdminOrderController.orderDetail()");
		System.out.println("sc = "+ sc);
		try {
			int totalCnt = ordDetailServ.searchResultCnt(sc);
			PageHandler ph = new PageHandler(totalCnt, sc);
			m.addAttribute("ph", ph);
			if (totalCnt == 0)
				return "/admin/order/orderDetailList";
			List list = ordDetailServ.searchSelectPage(sc);
			m.addAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "/admin/order/orderDetailList";
    }
	
	@ResponseBody
	@PatchMapping(value = "/orderDetail/modify", produces = "application/text; charset=utf-8")
	public ResponseEntity modify(OrderDetailDto dto){
		System.out.println("dto = "+dto);
		try {
			if (ordDetailServ.update(dto) != 1)
				throw new Exception("modify failed");
			return new ResponseEntity(HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@ModelAttribute
    public void adminGetPageData(Model m){
    	try {
    		Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
			m.addAttribute("startOfToday", Long.valueOf(startOfToday.toEpochMilli()));
    		
    		List<CodeTableDto> dtList = adminOrdDetailRepo.selectCodeType(101);
    		if (dtList == null) // dt = dateType
				throw new Exception("selectCodeType(101) failed");
    		List<CodeTableDto> diList = adminOrdDetailRepo.selectCodeType(102);
    		if (diList == null) // di = dateInterval
				throw new Exception("selectCodeType(102) failed");
    		List<CodeTableDto> ksList = adminOrdDetailRepo.selectCodeType(103);
    		if (ksList == null) // ks = keywordSearch
				throw new Exception("selectCodeType(103) failed");
    		
    		m.addAttribute("dtList",dtList);
    		m.addAttribute("diList",diList);
    		m.addAttribute("ksList",ksList);
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
}
