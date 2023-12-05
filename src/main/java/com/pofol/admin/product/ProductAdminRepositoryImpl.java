package com.pofol.admin.product;

import com.pofol.main.orders1.order.domain.CodeTableDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

@RequiredArgsConstructor
public class ProductAdminRepositoryImpl implements ProductAdminRepository{

    private final SqlSession sqlSession;

    @Override
    public List<CodeTableDto> selectCodeType(Integer code_type) throws Exception {
        return null;
    }

    @Override
    public List<ProductDto> selectAll() throws Exception {
        return null;
    }

    @Override
    public int update(ProductDto productDto) throws Exception {
        return 0;
    }

    @Override
    public int count() throws Exception {
        return 0;
    }
}
