package com.pofol.main.testProduct.controller;

import com.pofol.main.testProduct.domain.TestProductDto;
import com.pofol.main.testProduct.service.TestProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
public class TestProductController {

  private final TestProductService testProductService;

  @Autowired
  public TestProductController(TestProductService testProductService) {
    this.testProductService = testProductService;
  }

  @RequestMapping("/manager")
  public String manager() {
    return "manager";
  }

  @RequestMapping("/main")
  public String main(Model model) {

    try {
      List<TestProductDto> list = testProductService.getList();
      model.addAttribute("list", list);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "main";
  }

  @GetMapping("/pro")
  public String pro(Integer pro_id, Model model) {

    try {
      TestProductDto testProductDto = testProductService.read(pro_id);
      model.addAttribute("product" , testProductDto);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "pro_ex";
  }

  @GetMapping
  public String write(Model model) {
    return "";
  }

  @PostMapping
  public String write() {
    return "";
  }

  @PostMapping("/uploadImg")
  public void uploadImg(MultipartFile uploadFile) {
    System.out.println("uploadFile = " + uploadFile);
  }
}