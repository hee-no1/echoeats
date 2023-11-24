package com.pofol.main.order;

import java.util.List;
import java.util.Objects;

public class TotalProductsDto {
    private String tot_prod_name;
    private List<SelectedItemsDto> selectedItems; //selectedItems는 배열
    private Integer tot_ord_qty; //총 수량
    private Integer tot_prod_price; //총 상품 구매 금액
    private Integer tot_pay_price; //총 실 결제 금액

    public TotalProductsDto(){}

    public TotalProductsDto(String tot_prod_name, List<SelectedItemsDto> selectedItems, Integer tot_ord_qty, Integer tot_prod_price, Integer tot_pay_price) {
        this.tot_prod_name = tot_prod_name;
        this.selectedItems = selectedItems;
        this.tot_ord_qty = tot_ord_qty;
        this.tot_prod_price = tot_prod_price;
        this.tot_pay_price = tot_pay_price;
    }

    public String getTot_prod_name() {
        return tot_prod_name;
    }

    public void setTot_prod_name(String tot_prod_name) {
        this.tot_prod_name = tot_prod_name;
    }

    public List<SelectedItemsDto> getSelectedItems() {
        return selectedItems;
    }

    public void setSelectedItems(List<SelectedItemsDto> selectedItems) {
        this.selectedItems = selectedItems;
    }

    public Integer getTot_ord_qty() {
        return tot_ord_qty;
    }

    public void setTot_ord_qty(Integer tot_ord_qty) {
        this.tot_ord_qty = tot_ord_qty;
    }

    public Integer getTot_prod_price() {
        return tot_prod_price;
    }

    public void setTot_prod_price(Integer tot_prod_price) {
        this.tot_prod_price = tot_prod_price;
    }

    public Integer getTot_pay_price() {
        return tot_pay_price;
    }

    public void setTot_pay_price(Integer tot_pay_price) {
        this.tot_pay_price = tot_pay_price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TotalProductsDto that = (TotalProductsDto) o;
        return Objects.equals(tot_prod_name, that.tot_prod_name) && Objects.equals(selectedItems, that.selectedItems) && Objects.equals(tot_ord_qty, that.tot_ord_qty) && Objects.equals(tot_prod_price, that.tot_prod_price) && Objects.equals(tot_pay_price, that.tot_pay_price);
    }

    @Override
    public int hashCode() {
        return Objects.hash(tot_prod_name, selectedItems, tot_ord_qty, tot_prod_price, tot_pay_price);
    }

    @Override
    public String toString() {
        return "TotalProductsDto{" +
                "tot_prod_name='" + tot_prod_name + '\'' +
                ", selectedItems=" + selectedItems +
                ", tot_ord_qty=" + tot_ord_qty +
                ", tot_prod_price=" + tot_prod_price +
                ", tot_pay_price=" + tot_pay_price +
                '}';
    }
}
