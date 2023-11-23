package com.pofol.main.order;

import java.util.Objects;

public class TotalProductsDto {
    private String totalProductName;
    private SelectedItemsDto selectedItem;
    private Integer totalOrderQuantity;
    private Integer totalProductPrice;

    public TotalProductsDto(){}

    public TotalProductsDto(String totalProductName, SelectedItemsDto selectedItem, Integer totalOrderQuantity, Integer totalProductPrice) {
        this.totalProductName = totalProductName;
        this.selectedItem = selectedItem;
        this.totalOrderQuantity = totalOrderQuantity;
        this.totalProductPrice = totalProductPrice;
    }

    public String getTotalProductName() {
        return totalProductName;
    }

    public void setTotalProductName(String totalProductName) {
        this.totalProductName = totalProductName;
    }

    public SelectedItemsDto getSelectedItem() {
        return selectedItem;
    }

    public void setSelectedItem(SelectedItemsDto selectedItem) {
        this.selectedItem = selectedItem;
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
        return Objects.equals(totalProductName, that.totalProductName) && Objects.equals(selectedItem, that.selectedItem) && Objects.equals(totalOrderQuantity, that.totalOrderQuantity) && Objects.equals(totalProductPrice, that.totalProductPrice);
    }

    @Override
    public int hashCode() {
        return Objects.hash(totalProductName, selectedItem, totalOrderQuantity, totalProductPrice);
    }

    @Override
    public String toString() {
        return "TotalProductsDto{" +
                "totalProductName='" + totalProductName + '\'' +
                ", selectedItem=" + selectedItem +
                ", totalOrderQuantity=" + totalOrderQuantity +
                ", totalProductPrice=" + totalProductPrice +
                '}';
    }
}
