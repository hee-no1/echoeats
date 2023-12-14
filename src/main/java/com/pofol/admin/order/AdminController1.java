package com.pofol.admin.order;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pofol.main.orders.order.domain.CodeTableDto;
import com.pofol.main.orders.order.domain.PageHandler;
import com.pofol.main.orders.order.domain.SearchOrderCondition;
import com.pofol.main.orders.order.repository.OrderRepository;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin1")
public class AdminController1 {
	
	private final AdminOrderRepository adminOrdRpo;
	private final OrderRepository ordRop;
	
	@GetMapping("/order/list")
    public String orderList(SearchOrderCondition sc, Model m, HttpServletRequest request){
		System.out.println("AdminController.orderList()");
		
		try {
			int totalCnt = ordRop.searchResultCnt(sc);
			PageHandler ph = new PageHandler(totalCnt, sc);
			m.addAttribute("ph", ph);
			if (totalCnt == 0)
				return "/admin/order/orderList";
			List list = ordRop.searchSelectPage(sc);
			m.addAttribute("list", list);
			Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
			m.addAttribute("startOfToday", Long.valueOf(startOfToday.toEpochMilli()));
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "/admin/order/orderList";
    }
	
	@ModelAttribute
    public void adminGetPageData(Model m){
    	try {
    		List<CodeTableDto> dtList = adminOrdRpo.selectCodeType(101);
    		if (dtList == null) // dt = dateType
				throw new Exception("selectCodeType(101) failed");
    		List<CodeTableDto> diList = adminOrdRpo.selectCodeType(102);
    		if (diList == null) // di = dateInterval
				throw new Exception("selectCodeType(102) failed");
    		List<CodeTableDto> ksList = adminOrdRpo.selectCodeType(103);
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
