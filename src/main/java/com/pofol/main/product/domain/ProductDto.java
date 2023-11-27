package com.pofol.main.product.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class ProductDto {

    private int prod_id;
    private int evt_gp_id;
    private int prod_img_id;
    private String cat_code;
    private String prod_name;
    private int prod_price;
    private int rate;
    private String sale_sts;
    private int prod_qty;
    private String is_opt;
    private String disp_sts;
    private int rev_num;
    private String prod_rg_date;
    private String prod_mod_date;
    private String sel_str_date;
    private String sel_end_date;

    public ProductDto() {}

    public ProductDto(int prod_id, int evt_gp_id, int prod_img_id, String cat_code, String prod_name, int prod_price, int rate, String sale_sts, int prod_qty, String is_opt, String disp_sts, int rev_num, String prod_rg_date, String prod_mod_date, String sel_str_date, String sel_end_date) {
        this.prod_id = prod_id;
        this.evt_gp_id = evt_gp_id;
        this.prod_img_id = prod_img_id;
        this.cat_code = cat_code;
        this.prod_name = prod_name;
        this.prod_price = prod_price;
        this.rate = rate;
        this.sale_sts = sale_sts;
        this.prod_qty = prod_qty;
        this.is_opt = is_opt;
        this.disp_sts = disp_sts;
        this.rev_num = rev_num;
        this.prod_rg_date = prod_rg_date;
        this.prod_mod_date = prod_mod_date;
        this.sel_str_date = sel_str_date;
        this.sel_end_date = sel_end_date;
    }

}
