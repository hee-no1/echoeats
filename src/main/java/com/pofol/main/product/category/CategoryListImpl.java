package com.pofol.main.product.category;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryListImpl implements CategoryList {

    private final String namespace = "com.pofol.main.product.category.CategoryDto.";

    private final SqlSession sqlSession;

    @Autowired
    public CategoryListImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public List<CategoryDto> cateList() throws Exception {
        return sqlSession.selectList(namespace + "cateList");
    }

    // 상품 등록할 때 필요한 카테고리 목록
    @Override
    public List<CategoryDto> enrollCategoryList() throws Exception {
        return sqlSession.selectList(namespace + "enrollCategoryList");
    }

}
