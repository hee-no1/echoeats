package com.pofol.main.order.orderProductTest;

import java.util.Objects;

public class ProductDto {

    private String name;
    private Integer price;
    private String pack_type;
    public ProductDto(){}

    public ProductDto(String name, Integer price, String pack_type) {
        this.name = name;
        this.price = price;
        this.pack_type = pack_type;
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

    public String getPack_type() {
        return pack_type;
    }

    public void setPack_type(String pack_type) {
        this.pack_type = pack_type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProductDto that = (ProductDto) o;
        return Objects.equals(name, that.name) && Objects.equals(price, that.price) && Objects.equals(pack_type, that.pack_type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, price, pack_type);
    }

    @Override
    public String toString() {
        return "ProductDto{" +
                "name='" + name + '\'' +
                ", price=" + price +
                ", packType='" + pack_type + '\'' +
                '}';
    }
}
