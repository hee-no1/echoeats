package com.pofol.main.product.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class ProdController {

    @GetMapping("/main")
    public String mainPageGET() {
        return "main";
    }

    @GetMapping("/display")
    public String displayPageGET() {
        return "display";
    }

    @GetMapping("/product")
    public String productPageGET() {
        return "product";
    }

}
