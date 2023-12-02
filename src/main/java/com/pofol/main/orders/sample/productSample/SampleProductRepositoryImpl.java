package com.pofol.main.orders.sample.productSample;

import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SampleProductRepositoryImpl implements SampleProductRepository {

    String namespace = "com.pofol.orders.sample.RequiredProductMapper.";
    private final SqlSession session;

    @Autowired
    public SampleProductRepositoryImpl(SqlSession session) {
        this.session = session;
    }

    @Override
    public SampleProductDto selectProduct(Long prod_id) {
        return session.selectOne(namespace+"selectProduct",prod_id);
    }

    @Override
    public SampleProductDto selectOptionProduct(String opt_prod_id) {
        return session.selectOne(namespace+"selectOptionProduct",opt_prod_id);
    }

    @Override
    public SampleProductDto selectProductInfo(Long prod_id) {
        return session.selectOne(namespace+"selectProductInfo",prod_id);
    }

    @Override
    public SampleProductDto selectRequiredProduct(SelectedItemsDto selectedItemsDto) throws Exception{

        return session.selectOne(namespace + "selectRequiredProductDto", selectedItemsDto);
    }
}
