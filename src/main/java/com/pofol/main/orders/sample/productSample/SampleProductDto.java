package com.pofol.main.orders.sample.productSample;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Objects;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SampleProductDto {

    private Long prod_id;
    private String prod_name;
    private Integer prod_price;
    private Integer disc_price;
    private String opt_prod_id;
    private String opt_prod_name;
    private Integer opt_price;
    private Integer opt_disc_price;
    private String pack_type;
    private String dlvy_type;

    public SampleProductDto(Long prod_id) {
        this.prod_id = prod_id;
    }

    public SampleProductDto(Long prod_id, String opt_prod_id) {
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
    }
}
