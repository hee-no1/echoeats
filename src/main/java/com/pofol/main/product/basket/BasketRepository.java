package com.pofol.main.product.basket;

import com.pofol.main.orders.order.domain.ProductOrderCheckout;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;

public interface BasketRepository {


    ProductOrderCheckout selectProductOrderCheckout(SelectedItemsDto selectedItemsDto) throws Exception;
    ProductDto selectProduct(Long prod_id) throws Exception;
    OptionProductDto selectOptionProduct(String opt_prod_id) throws Exception;

}
