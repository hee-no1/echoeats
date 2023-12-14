package com.pofol.main.product.basket;

import com.pofol.main.orders.order.domain.ProductOrderCheckout;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class BasketRepositoryImpl implements BasketRepository {

    private String namespace = "com.pofol.product.BasketMapper.";
    private final SqlSession session;

    @Override
    public ProductOrderCheckout selectProductOrderCheckout(SelectedItemsDto selectedItemsDto) throws Exception{

        return session.selectOne(namespace + "selectProductOrderCheckout", selectedItemsDto);
    }

    @Override
    public ProductDto selectProduct(Long prod_id) throws Exception {
        return session.selectOne(namespace+"selectProduct",prod_id);
    }

    @Override
    public OptionProductDto selectOptionProduct(String opt_prod_id) throws Exception {
        return session.selectOne(namespace+"selectOptionProduct",opt_prod_id);
    }
}
