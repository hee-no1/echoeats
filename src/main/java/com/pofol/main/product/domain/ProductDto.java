package com.pofol.main.product.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.Objects;

@ToString
@Getter
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
  private Date prod_rg_date; // 상품 등록일
  private Date prod_mod_date; // 상품 수정일
  private Date sel_str_date; // 판매 시작일
  private Date sel_end_date; // 판매 종료일
  private Long prod_desc_id; // 상품 상세

  private String brand; // 브랜드
  private String origin; // 원산지
  private String dlvy_type; // 배송 타입
  private String seller; // 판매자 (관리자)
  private String pack_type; // 포장타입
  private String sales_unit; // 판매단위
  private String weight; // 중량/용량
  private String exp_date; // 유통기한
  private String as_guide; // 안내사항

  // insert 테스트용 생성자
  public ProductDto(Long evt_gp_id, String prod_img_id, String cat_code, String prod_name, int prod_price, int disc_rate, String sale_sts, int prod_qty, String is_opt, String short_desc, String long_desc, String disp_sts, Date prod_mod_date, Date sel_str_date, Date sel_end_date) {
    this.evt_gp_id = evt_gp_id;
    this.prod_img_id = prod_img_id;
    this.cat_code = cat_code;
    this.prod_name = prod_name;
    this.prod_price = prod_price;
    this.disc_rate = disc_rate;
    this.sale_sts = sale_sts;
    this.prod_qty = prod_qty;
    this.is_opt = is_opt;
    this.short_desc = short_desc;
    this.long_desc = long_desc;
    this.disp_sts = disp_sts;
    this.prod_mod_date = prod_mod_date;
    this.sel_str_date = sel_str_date;
    this.sel_end_date = sel_end_date;
  }

    public void setProd_id(Long prod_id) {
        this.prod_id = prod_id;
    }

    public void setEvt_gp_id(Long evt_gp_id) {
        this.evt_gp_id = evt_gp_id;
    }

    public void setProd_img_id(String prod_img_id) {
        this.prod_img_id = prod_img_id;
    }

    public void setCat_code(String cat_code) {
        this.cat_code = cat_code;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    public void setProd_price(Integer prod_price) {
        this.prod_price = prod_price;
    }

    public void setRate(Integer disc_rate) {
        this.disc_rate = disc_rate;
    }

    public void setSale_sts(String sale_sts) {
        this.sale_sts = sale_sts;
    }

    public void setProd_qty(Integer prod_qty) {
        this.prod_qty = prod_qty;
    }

    public void setIs_opt(String is_opt) {
        this.is_opt = is_opt;
    }

    public void setDisp_sts(String disp_sts) {
        this.disp_sts = disp_sts;
    }

    public void setRev_num(Integer rev_num) {
        this.rev_num = rev_num;
    }

    public void setProd_rg_date(Date prod_rg_date) {
        this.prod_rg_date = prod_rg_date;
    }

    public void setProd_mod_date(Date prod_mod_date) {
        this.prod_mod_date = prod_mod_date;
    }

    public void setSel_str_date(Date sel_str_date) {
        this.sel_str_date = sel_str_date;
    }

    public void setSel_end_date(Date sel_end_date) {
        this.sel_end_date = sel_end_date;
    }

    public void setIs_exch(String is_exch) {
        this.is_exch = is_exch;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public void setShort_desc(String short_desc) {
        this.short_desc = short_desc;
    }

    public void setLong_desc(String long_desc) {
        this.long_desc = long_desc;
    }

    public void setSeller(String seller) {
        this.seller = seller;
    }

    public void setExp_date(String exp_date) {
        this.exp_date = exp_date;
    }

    public void setAs_guide(String as_guide) {
        this.as_guide = as_guide;
    }

    public void setSales_unit(String sales_unit) {
        this.sales_unit = sales_unit;
    }

    public void setPack_type(String pack_type) {
        this.pack_type = pack_type;
    }

    public void setProd_desc_id(Long prod_desc_id) {
        this.prod_desc_id = prod_desc_id;
    }

    public void setDisc_price(Integer disc_price) {
        this.disc_price = disc_price;
    }

    public void setDlvy_type(String dlvy_type) {
        this.dlvy_type = dlvy_type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProductDto that = (ProductDto) o;
        return Objects.equals(prod_id, that.prod_id) && Objects.equals(evt_gp_id, that.evt_gp_id) && Objects.equals(prod_img_id, that.prod_img_id) && Objects.equals(cat_code, that.cat_code) && Objects.equals(prod_name, that.prod_name) && Objects.equals(prod_price, that.prod_price) && Objects.equals(disc_rate, that.disc_rate) && Objects.equals(sale_sts, that.sale_sts) && Objects.equals(prod_qty, that.prod_qty) && Objects.equals(is_opt, that.is_opt) && Objects.equals(disp_sts, that.disp_sts) && Objects.equals(rev_num, that.rev_num) && Objects.equals(prod_rg_date, that.prod_rg_date) && Objects.equals(prod_mod_date, that.prod_mod_date) && Objects.equals(sel_str_date, that.sel_str_date) && Objects.equals(sel_end_date, that.sel_end_date) && Objects.equals(origin, that.origin) && Objects.equals(weight, that.weight) && Objects.equals(brand, that.brand) && Objects.equals(short_desc, that.short_desc) && Objects.equals(long_desc, that.long_desc) && Objects.equals(seller, that.seller) && Objects.equals(exp_date, that.exp_date) && Objects.equals(as_guide, that.as_guide) && Objects.equals(sales_unit, that.sales_unit) && Objects.equals(pack_type, that.pack_type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(prod_id, evt_gp_id, prod_img_id, cat_code, prod_name, prod_price, disc_rate, sale_sts, prod_qty, is_opt, disp_sts, rev_num, prod_rg_date, prod_mod_date, sel_str_date, sel_end_date, origin, weight, brand, short_desc, long_desc, seller, exp_date, as_guide, sales_unit, pack_type);
    }
}