package com.pofol.main.product.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

@Controller
@Slf4j
public class ProductController {

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
