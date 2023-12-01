package com.pofol.main.orders.sample.productSample;

import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;

import java.util.List;

public interface RequiredProductRepository {

    RequiredProductDto selectProduct(Long prod_id);

    RequiredProductDto selectOptionProduct(String opt_prod_id);

    RequiredProductDto selectProductInfo(Long prod_id);

    RequiredProductDto selectRequiredProduct(SelectedItemsDto selectedItemsDto) throws Exception;

}
