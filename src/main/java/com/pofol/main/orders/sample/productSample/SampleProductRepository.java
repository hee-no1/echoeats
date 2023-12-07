package com.pofol.main.orders.sample.productSample;

import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;

public interface SampleProductRepository {

    SampleProductDto selectProduct(Long prod_id) throws Exception;

    SampleProductDto selectOptionProduct(String opt_prod_id) throws Exception;

    SampleProductDto selectProductInfo(Long prod_id) throws Exception;

    SampleProductDto selectRequiredProduct(SelectedItemsDto selectedItemsDto) throws Exception;

}
