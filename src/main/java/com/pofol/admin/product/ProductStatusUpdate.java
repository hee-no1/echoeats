package com.pofol.admin.product;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductStatusUpdate {

    private String saleStatus;
    private String displayStatus;
}
