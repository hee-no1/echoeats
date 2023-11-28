package com.pofol.main.product.controller;

import com.pofol.main.product.domain.ProdDto;
import com.pofol.main.product.service.ProdService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
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
    public void displayPageGET(Model model) throws Exception {
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

    @GetMapping("/prodEnroll")
    public String prodEnrollPageGET() {
        return "prodEnroll";
    }

    @GetMapping("/upload")
    public ResponseEntity<byte[]> getImages(String fileName) {
        File file = new File("/Users/hyungjunlim/Documents/programming/echoeats_items/" + fileName);
        ResponseEntity<byte[]> result = null;
        try {
            HttpHeaders header = new HttpHeaders();
            header.add("Content-type", Files.probeContentType(file.toPath()));
            result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

}
