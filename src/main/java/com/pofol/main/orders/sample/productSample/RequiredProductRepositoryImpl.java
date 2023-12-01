package com.pofol.main.orders.sample.productSample;

import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class RequiredProductRepositoryImpl implements RequiredProductRepository{

    String namespace = "com.pofol.orders.sample.RequiredProductMapper.";
    private final SqlSession session;

    @Autowired
    public RequiredProductRepositoryImpl(SqlSession session) {
        this.session = session;
    }

    @Override
    public RequiredProductDto selectProduct(Long prod_id) {
        return session.selectOne(namespace+"selectProduct",prod_id);
    }

    @Override
    public RequiredProductDto selectOptionProduct(String opt_prod_id) {
        return session.selectOne(namespace+"selectOptionProduct",opt_prod_id);
    }

    @Override
    public RequiredProductDto selectProductInfo(Long prod_id) {
        return session.selectOne(namespace+"selectProductInfo",prod_id);
    }

    @Override
    public RequiredProductDto selectRequiredProduct(SelectedItemsDto selectedItemsDto) throws Exception{

        return session.selectOne(namespace + "selectRequiredProductDto", selectedItemsDto);
    }
}
