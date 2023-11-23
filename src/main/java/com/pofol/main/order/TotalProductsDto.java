package com.pofol.main.order;

import java.util.List;
import java.util.Objects;

public class TotalProductsDto {
    private String totalProductName;
    private List<SelectedItemsDto> selectedItems;
    private Integer totalOrderQuantity;
    private Integer totalProductPrice;

    public TotalProductsDto(){}

    public TotalProductsDto(String totalProductName, List<SelectedItemsDto> selectedItems, Integer totalOrderQuantity, Integer totalProductPrice) {
        this.totalProductName = totalProductName;
        this.selectedItems = selectedItems;
        this.totalOrderQuantity = totalOrderQuantity;
        this.totalProductPrice = totalProductPrice;
    }

    public String getTotalProductName() {
        return totalProductName;
    }

    public void setTotalProductName(String totalProductName) {
        this.totalProductName = totalProductName;
    }

    public List<SelectedItemsDto> getSelectedItems() {
        return selectedItems;
    }

    public void setSelectedItems(List<SelectedItemsDto> selectedItems) {
        this.selectedItems = selectedItems;
    }

    public Integer getTotalOrderQuantity() {
        return totalOrderQuantity;
    }

    public void setTotalOrderQuantity(Integer totalOrderQuantity) {
        this.totalOrderQuantity = totalOrderQuantity;
    }

    public Integer getTotalProductPrice() {
        return totalProductPrice;
    }

    public void setTotalProductPrice(Integer totalProductPrice) {
        this.totalProductPrice = totalProductPrice;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TotalProductsDto that = (TotalProductsDto) o;
        return Objects.equals(totalProductName, that.totalProductName) && Objects.equals(selectedItems, that.selectedItems) && Objects.equals(totalOrderQuantity, that.totalOrderQuantity) && Objects.equals(totalProductPrice, that.totalProductPrice);
    }

    @Override
    public int hashCode() {
        return Objects.hash(totalProductName, selectedItems, totalOrderQuantity, totalProductPrice);
    }

    @Override
    public String toString() {
        return "TotalProductsDto{" +
                "totalProductName='" + totalProductName + '\'' +
                ", selectedItems=" + selectedItems +
                ", totalOrderQuantity=" + totalOrderQuantity +
                ", totalProductPrice=" + totalProductPrice +
                '}';
    }
}
