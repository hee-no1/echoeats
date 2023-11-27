package com.pofol.main.order.orderProductTest;

import java.util.Objects;

public class ProductDto {

    private Long prod_id;
    private String name;
    private Integer price;
    private String pack_type;
    public ProductDto(){}

    public ProductDto(Long prod_id, String name, Integer price, String pack_type) {
        this.prod_id = prod_id;
        this.name = name;
        this.price = price;
        this.pack_type = pack_type;
    }

    public Long getProd_id() {
        return prod_id;
    }

    public void setProd_id(Long prod_id) {
        this.prod_id = prod_id;
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
        return Objects.equals(prod_id, that.prod_id) && Objects.equals(name, that.name) && Objects.equals(price, that.price) && Objects.equals(pack_type, that.pack_type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(prod_id, name, price, pack_type);
    }

    @Override
    public String toString() {
        return "ProductDto{" +
                "prod_id=" + prod_id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", pack_type='" + pack_type + '\'' +
                '}';
    }
}
