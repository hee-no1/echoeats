package com.pofol.main.product.domain;

import lombok.Data;

public class AttachImageDto {

  // 경로
  private String uploadPath;

  // uuid
  private String uuid;

  // 파일 이름
  private String fileName;

  // 상품 id
  private Integer pro_id;

  public String getUploadPath() {
    return uploadPath;
  }

  public void setUploadPath(String uploadPath) {
    this.uploadPath = uploadPath;
  }

  public String getUuid() {
    return uuid;
  }

  public void setUuid(String uuid) {
    this.uuid = uuid;
  }

  public String getFileName() {
    return fileName;
  }

  public void setFileName(String fileName) {
    this.fileName = fileName;
  }

  public Integer getPro_id() {
    return pro_id;
  }

  public void setPro_id(Integer pro_id) {
    this.pro_id = pro_id;
  }

  @Override
  public String toString() {
    return "AttachImageDto{" +
        "uploadPath='" + uploadPath + '\'' +
        ", uuid='" + uuid + '\'' +
        ", fileName='" + fileName + '\'' +
        ", pro_id=" + pro_id +
        '}';
  }

}
