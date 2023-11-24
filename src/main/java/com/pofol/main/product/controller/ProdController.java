package com.pofol.main.product.controller;

import com.pofol.main.product.domain.AttachImageDto;
import com.pofol.main.product.domain.ProdDto;
import com.pofol.main.product.service.ProdService;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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

}
