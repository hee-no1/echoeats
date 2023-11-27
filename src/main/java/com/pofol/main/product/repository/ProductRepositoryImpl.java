package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProductDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductRepositoryImpl implements ProductRepository {

    private final String namespace = "ProductDto.";
    private final SqlSession session;

    @Autowired
    public ProductRepositoryImpl(SqlSession session) {
        this.session = session;
    }

    // 상품 등록
    @Override
    public void productEnroll(ProductDto productDto) throws Exception {
        session.insert(namespace + "productEnroll", productDto);
    }

}
