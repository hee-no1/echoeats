package com.pofol.main.product.service;

import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;

    @Autowired
    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public void productEnroll(ProductDto productDto) {
        try {
            productRepository.insert(productDto);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int productCount() {
        try {
            return productRepository.count();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
