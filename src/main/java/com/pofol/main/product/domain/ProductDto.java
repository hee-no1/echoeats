package com.pofol.main.product.domain;

import lombok.Getter;

@Getter
public class ProductDto {

    private int evt_gp_id; // 이벤트 그룹 id
    private int prod_img_id; // 상품 이미지 id
    private String cat_code; // 카테고리 코드
    private String prod_name; // 상품명
    private int prod_price; // 상품 가격
    private int rate; // 할인율
    private String sale_sts; // 판매 상태
    private int prod_qty; // 재고 수량
    private String is_opt; // 옵션 여부
    private String short_desc; // 짧은 설명
    private String long_desc; // 긴 설명
    private String disp_sts; // 전시 상태
    private String prod_mod_date; // 상품 수정일
    private String sel_str_date; // 판매 시작일
    private String sel_end_date; // 판매 종료일

    public ProductDto() {}

    public ProductDto(int evt_gp_id, int prod_img_id, String cat_code, String prod_name, int prod_price, int rate, String sale_sts, int prod_qty, String is_opt, String short_desc, String long_desc, String disp_sts, String prod_mod_date, String sel_str_date, String sel_end_date) {
        this.evt_gp_id = evt_gp_id;
        this.prod_img_id = prod_img_id;
        this.cat_code = cat_code;
        this.prod_name = prod_name;
        this.prod_price = prod_price;
        this.rate = rate;
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

}
