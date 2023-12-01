package com.pofol.main.product.sortTable;

import java.util.List;

public interface SortingStrategy<T> {

    List<T> sort(List<T> items);
}
