package com.pofol.main.product.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class BasketDto {

    private Long prod_id;
    private String opt_prod_id;
    private Integer opt_disc_price;
    private Integer disc_price;
    private Integer quantity;

    private Integer total_price;
//    private List<BasketDto> productList;
}
