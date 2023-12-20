package com.pofol.main.orders.order.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductOrderCheckout {

    private Long prod_id;
    private String prod_img_id;
    private String prod_name;
    private Integer prod_price;
    private Integer disc_price;
    private String opt_prod_id;
    private String opt_prod_name;
    private Integer opt_price;
    private Integer opt_disc_price;
    private String pack_type;
    private String dlvy_type;

    public ProductOrderCheckout(Long prod_id) {
        this.prod_id = prod_id;
    }

    public ProductOrderCheckout(Long prod_id, String opt_prod_id) {
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
    }
}
