package com.pofol.main.product.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Data
@NoArgsConstructor
public class ProductImageDto {

  private String prod_img_id;

  private String ori_file_name;

  private String ser_file_name;

  private Date rg_date;

  private String rg_num;

  private Date md_date;

  private String md_num;

  private Long prod_id;

  public ProductImageDto(String prod_img_id, String ori_file_name, String ser_file_name, String rg_num) {
    this.prod_img_id = prod_img_id;
    this.ori_file_name = ori_file_name;
    this.ser_file_name = ser_file_name;
    this.rg_num = rg_num;
    this.md_num = rg_num;
  }

}
