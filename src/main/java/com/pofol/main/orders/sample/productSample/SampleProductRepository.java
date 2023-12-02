package com.pofol.main.orders.sample.productSample;

import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;

public interface SampleProductRepository {

    SampleProductDto selectProduct(Long prod_id);

    SampleProductDto selectOptionProduct(String opt_prod_id);

    SampleProductDto selectProductInfo(Long prod_id);

    SampleProductDto selectRequiredProduct(SelectedItemsDto selectedItemsDto) throws Exception;

}
