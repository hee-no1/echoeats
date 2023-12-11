package com.pofol.admin.product;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductFilterDto {

    private String selling;
    private String display;
    private Integer stock_min;
    private Integer stock_max;
    private Integer price_min;
    private Integer price_max;
    private String option;
    private String bigCategory;
    private String midCategory;
}
