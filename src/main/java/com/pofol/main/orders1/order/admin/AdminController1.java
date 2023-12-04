package com.pofol.main.orders1.order.admin;

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

import com.pofol.main.orders1.order.domain.CodeTableDto;
import com.pofol.main.orders1.order.domain.PageHandler;
import com.pofol.main.orders1.order.domain.SearchOrderCondition;
import com.pofol.main.orders1.order.repository.OrderRepository;

@Controller
@RequestMapping("/admin1")
public class AdminController1 {
	
	@Autowired
	AdminOrderRepository adminOrdRpo;
	@Autowired
	OrderRepository ordRop;
	
	@GetMapping("/order/list")
    public String orderList(SearchOrderCondition sc, Model m, HttpServletRequest request){
		System.out.println("AdminController.orderList()");
		System.out.println("sc = "+sc);
		
		try {
			int totalCnt = ordRop.searchResultCnt(sc);
			PageHandler ph = new PageHandler(totalCnt, sc);
			m.addAttribute("ph", ph);
			List list = ordRop.searchSelectPage(sc);
			m.addAttribute("list", list);
			Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
			m.addAttribute("startOfToday", Long.valueOf(startOfToday.toEpochMilli()));
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "/admin/orderList";
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
