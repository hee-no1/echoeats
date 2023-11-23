package com.pofol.main.order;

import org.apache.ibatis.annotations.Select;

import java.util.Objects;

public class SelectedItemsDto {

    private String name;
    private Integer price;

    public SelectedItemsDto(){}

    public SelectedItemsDto(String name, Integer price) {
        this.name = name;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SelectedItemsDto that = (SelectedItemsDto) o;
        return Objects.equals(name, that.name) && Objects.equals(price, that.price);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, price);
    }

    @Override
    public String toString() {
        return "SelectedItemsDto{" +
                "name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}
