package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProdDto;

import java.util.List;

public interface ProdRepository {

    List<ProdDto> selectAll() throws Exception;

    Integer insert(ProdDto prodDto) throws Exception;

}
