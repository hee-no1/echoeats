package com.pofol.admin.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class ProductAdminController {

    @GetMapping("/product/list")
    public String getAdminProductList() {
        return "productAdminList";
    }
}
