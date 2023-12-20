package com.pofol.main.product.sortTable;

import com.pofol.main.product.domain.ProductDto;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ChristmasEventSort implements SortingProduct{

    @Override
    public List<ProductDto> getGroupProductList() {
        return null;
    }
}
