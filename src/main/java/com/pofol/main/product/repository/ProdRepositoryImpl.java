package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProdDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProdRepositoryImpl implements ProdRepository {

    private final SqlSession session;
    private final String namespace = "ProdDto.";

    @Autowired
    public ProdRepositoryImpl(SqlSession session) {
        this.session = session;
    }

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
