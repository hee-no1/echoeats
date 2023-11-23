package com.pofol.main.testProduct.controller;

import com.pofol.main.testProduct.domain.TestProductDto;
import com.pofol.main.testProduct.service.TestProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import static com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat.UUID;
import static java.util.UUID.*;

@Slf4j
@Controller
public class TestProductController {

  private final TestProductService testProductService;

  @Autowired
  public TestProductController(TestProductService testProductService) {
    this.testProductService = testProductService;
  }

  @RequestMapping("/managerForm")
  public String manager() {
    return "managerForm";
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



  // 이미지 파일 업로드
  @PostMapping("/upload")
  @ResponseBody
  public String handleFileUpload(@RequestParam("file") MultipartFile file) {

    // 이미지 파일 저장 폴더 생성
    String uploadFolder = "C:\\upload";
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    Date date = new Date();

    String str = sdf.format(date);

    String datePath = str.replace("-", File.separator);

    File uploadPath = new File(uploadFolder, datePath);

    if(!uploadPath.exists()) {
      uploadPath.mkdirs();
    }

    // UUID 번호
    String uuid = randomUUID().toString();
    // 이미지 파일 이름
    String uploadFileName = file.getOriginalFilename();
    // UUID 번호 + _ + 이미지 파일 이름
    uploadFileName = uuid + "_" + uploadFileName;
    // 파일객체 (파일 위치, 파일 이름)
    File saveFile = new File(uploadPath, uploadFileName);
    // 이미지 파일 폴더에 저장
    try {
      file.transferTo(saveFile);
    } catch (Exception e) {
      e.printStackTrace();
    }

    // 이미지 파일정보 저장
    if (!file.isEmpty()) {
      try {
//         여기에서 파일을 저장하거나 필요한 비즈니스 로직을 수행합니다.
//         예를 들어, 파일을 특정 경로에 저장할 수 있습니다.
//        file.transferTo(new File("/path/to/save/" + file.getOriginalFilename()));
//        return "{\"message\": \"File uploaded successfully\", \"filename\": \"" + file.getOriginalFilename() + "\"}";
        return "C:\\upload\\2023\\11\\23\\" + file.getOriginalFilename();
      } catch (Exception e) {
        return "fail : " + e.getMessage();
      }
    } else {
      return "No uploaded.";
    }
  }
}