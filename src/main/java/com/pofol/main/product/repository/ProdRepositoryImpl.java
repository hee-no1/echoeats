package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProdDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProdRepositoryImpl implements ProdRepository {

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
    public List<ProdDto> selectAll() throws Exception {
        return session.selectList(namespace + "selectAll");
    }


}
