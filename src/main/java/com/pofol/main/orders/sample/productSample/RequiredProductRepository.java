package com.pofol.main.orders.sample.productSample;

import java.util.List;

public interface RequiredProductRepository {

    RequiredProductDto selectProduct(Long prod_id);

    RequiredProductDto selectOptionProduct(String opt_prod_id);

    RequiredProductDto selectProductInfo(Long prod_id);

    RequiredProductDto selectRequiredProduct(RequiredProductDto requiredProductDto);

}
