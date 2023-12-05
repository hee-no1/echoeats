package com.pofol.admin.product;

import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductAdminServiceImpl implements ProductAdminService{

    private final ProductAdminRepository productAdminRepository;

    @Override
    public List<ProductDto> getProductAdminList() throws Exception {

        try {
            return productAdminRepository.selectAll();
        } catch (Exception e) {
            throw  new RuntimeException();
        }
    }
}
