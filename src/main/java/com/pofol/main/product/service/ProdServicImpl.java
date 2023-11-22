package com.pofol.main.product.service;

import com.pofol.main.product.domain.ProdDto;
import com.pofol.main.product.repository.ProdRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class ProdServicImpl implements ProdService {

    private final ProdRepository prodRepository;

    @Autowired
    public ProdServicImpl(ProdRepository prodRepository) {
        this.prodRepository = prodRepository;
    }

    @Override
    public List<ProdDto> getList() {
        try {
            return prodRepository.selectAll();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
