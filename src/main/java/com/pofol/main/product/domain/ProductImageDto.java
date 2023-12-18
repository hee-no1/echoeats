package com.pofol.main.product.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Data
@NoArgsConstructor
public class ProductImageDto {

  private String prod_img_id;
<<<<<<< HEAD
  
  private Long prod_id;
=======
>>>>>>> 0277e669cd3e0e9c9512288b96097386d98569b9

  private String ori_file_name;

  private String ser_file_name;

  private Date rg_date;

  private String rg_num;

  private Date md_date;

  private String md_num;

<<<<<<< HEAD
  public ProductImageDto(String prod_img_id, String ori_file_name, String ser_file_name, String rg_num) {
    this.prod_img_id = prod_img_id;
	this.ori_file_name = ori_file_name;
=======
  private Long prod_id;

  public ProductImageDto(String prod_img_id, Long prod_id, String ori_file_name, String ser_file_name, String rg_num) {
    this.prod_img_id = prod_img_id;
    this.ori_file_name = ori_file_name;
>>>>>>> 0277e669cd3e0e9c9512288b96097386d98569b9
    this.ser_file_name = ser_file_name;
    this.rg_num = rg_num;
    this.md_num = rg_num;
    this.prod_id = prod_id;
  }

}
