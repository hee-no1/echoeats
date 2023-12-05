package com.pofol.admin.product;

import com.pofol.main.product.domain.ProductDto;

import java.util.List;

public interface ProductAdminService {

    List<ProductDto> getProductAdminList() throws Exception;
}
