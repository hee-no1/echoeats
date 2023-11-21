package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProdDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProdDaoImpl implements ProdDao {

    @Autowired
    private SqlSession session;
    private static String namespace = "ProdDto.";


    // 상품 등록
    @Override
    public Integer insert(ProdDto prodDto) throws Exception {
        return null;
    }

    // 상품 목록 보기
    @Override
    public ProdDto select(Integer pro_id) throws Exception {
        return session.selectOne(namespace + "select", pro_id);
    }


}
