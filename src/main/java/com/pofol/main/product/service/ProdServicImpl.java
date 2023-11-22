package com.pofol.main.product.service;

import com.pofol.main.product.domain.ProdDto;
import com.pofol.main.product.repository.ProdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProdServicImpl implements ProdService {

    @Autowired
    ProdRepository prodRepository;

    @Override
    public List<ProdDto> getList() throws Exception {
        return prodRepository.selectAll();
    }

}
