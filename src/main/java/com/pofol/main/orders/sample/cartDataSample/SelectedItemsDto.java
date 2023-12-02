package com.pofol.main.orders.sample.cartDataSample;

import java.util.List;
import java.util.Objects;

public class SelectedItemsDto {

    private Long prod_id;
    private String opt_prod_id;
    private Integer qty;
    private List<SelectedItemsDto> items;

    SelectedItemsDto(){}

    public SelectedItemsDto(Long prod_id, String opt_prod_id, Integer qty) {
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
        this.qty = qty;
    }

    public SelectedItemsDto(Long prod_id, String opt_prod_id, Integer qty, List<SelectedItemsDto> items) {
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
        this.qty = qty;
        this.items = items;
    }

    public Long getProd_id() {
        return prod_id;
    }

    public void setProd_id(Long prod_id) {
        this.prod_id = prod_id;
    }

    public String getOpt_prod_id() {
        return opt_prod_id;
    }

    public void setOpt_prod_id(String opt_prod_id) {
        this.opt_prod_id = opt_prod_id;
    }

    public Integer getQty() {
        return qty;
    }

    public void setQty(Integer qty) {
        this.qty = qty;
    }

    public List<SelectedItemsDto> getItems() {
        return items;
    }

    public void setItems(List<SelectedItemsDto> items) {
        this.items = items;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SelectedItemsDto that = (SelectedItemsDto) o;
        return Objects.equals(prod_id, that.prod_id) && Objects.equals(opt_prod_id, that.opt_prod_id) && Objects.equals(qty, that.qty) && Objects.equals(items, that.items);
    }

    @Override
    public int hashCode() {
        return Objects.hash(prod_id, opt_prod_id, qty, items);
    }
}
