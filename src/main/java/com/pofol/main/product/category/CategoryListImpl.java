package com.pofol.main.product.category;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryListImpl implements CategoryList {

    private final String namespace = "ecoeats.categoryMapper.";

    private final SqlSession sqlSession;

    @Autowired
    public CategoryListImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public List<CategoryDto> cateList() throws Exception {
        return sqlSession.selectList(namespace + "cateList");
    }

    @Override // 대 카테고리 정렬
    public List<CategoryDto> bigCateList() throws Exception {
        return sqlSession.selectList(namespace + "bigCateList");
    }

    @Override // 중 카테고리 정렬
    public List<CategoryDto> midCateList(String cat_code) throws Exception {
        return sqlSession.selectList(namespace + "midCateList", cat_code);
    }
}
