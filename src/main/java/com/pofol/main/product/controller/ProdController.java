package com.pofol.main.product.controller;

import com.pofol.main.product.domain.ProdDto;
import com.pofol.main.product.service.ProdService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@Slf4j
public class ProdController {

    private final ProdService prodService;

    @Autowired
    public ProdController(ProdService prodService) {
        this.prodService = prodService;
    }

    @GetMapping("/main")
    public String mainPageGET() {
        return "main";
    }

    @GetMapping("/display")
    public void displayPageGET(Model model) throws Exception{
        System.out.println("prodService.getList() = " + prodService.getList());
        List<ProdDto> display = prodService.getList();
        model.addAttribute("display", display);
    }

    @GetMapping("/product")
    public String productPageGET(Model model) throws Exception {
        List<ProdDto> display = prodService.getList();
        model.addAttribute("display", display);
        return "product";
    }

}
