package com.pofol.main.product.domain;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.Objects;

@Data
@NoArgsConstructor
public class ProductDto {

  private Long prod_id; // 상품 ID
  private Long evt_gp_id; // 이벤트그룹 ID
  private String prod_img_id; // 상품 이미지 ID (일단 url을 가데이터로 넣고 개발할 것) (원래 타입은 Long)
  private String cat_code; // 카테고리 코드
  private String prod_name; // 상품명
  private Integer prod_price; // 상품 가격
  private Integer disc_rate; // 할인율
  private Integer disc_price; // 할인된 가격
  private String sale_sts; // 판매 상태
  private Integer prod_qty; // 재고 수량
  private String is_exch; // 교환 가능 여부
  private String is_opt; // 옵션 유무
  private String short_desc; // 짧은 상세 설명
  private String long_desc; // 긴 상세 설명
  private String disp_sts; // 전시 상태 (Y or N)
  private Integer rev_num; // 리뷰수
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date prod_rg_date; // 상품 등록일
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date prod_mod_date; // 상품 수정일
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date sel_str_date; // 판매 시작일
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date sel_end_date; // 판매 종료일
  private Long prod_desc_id; // 상품 상세
  private Date rg_date;
  private String rg_num;
  private Date md_date;
  private String md_num;

  private String brand; // 브랜드
  private String origin; // 원산지
  private String dlvy_type; // 배송 타입
  private String seller; // 판매자 (관리자)
  private String pack_type; // 포장타입
  private String sales_unit; // 판매단위
  private String weight; // 중량/용량
  private String exp_date; // 유통기한
  private String as_guide; // 안내사항

  MultipartFile prod_img; // 상품 이미지 파일

  public ProductDto(Long evt_gp_id, String prod_img_id, String cat_code, String prod_name, Integer prod_price, Integer disc_rate, String sale_sts, Integer prod_qty, String is_exch, String is_opt, String short_desc, String long_desc, String disp_sts, String brand, String origin, String dlvy_type, String pack_type, String sales_unit, String weight, String exp_date, MultipartFile prod_img, String rg_num) {
    this.evt_gp_id = evt_gp_id;
    this.prod_img_id = prod_img_id;
    this.cat_code = cat_code;
    this.prod_name = prod_name;
    this.prod_price = prod_price;
    this.disc_rate = disc_rate;
    this.sale_sts = sale_sts;
    this.prod_qty = prod_qty;
    this.is_exch = is_exch;
    this.is_opt = is_opt;
    this.short_desc = short_desc;
    this.long_desc = long_desc;
    this.disp_sts = disp_sts;
    this.brand = brand;
    this.origin = origin;
    this.dlvy_type = dlvy_type;
    this.pack_type = pack_type;
    this.sales_unit = sales_unit;
    this.weight = weight;
    this.exp_date = exp_date;
    this.prod_img = prod_img;
    this.rg_num = rg_num;
    this.md_num = rg_num;
    this.disc_price = this.prod_price * ((100-this.disc_rate) / 100);
  }

}