package com.pofol.main.orders.sample.cartDataSample;

import com.pofol.main.orders.sample.productSample.SampleProductDto;
import lombok.Getter;

import java.util.List;
import java.util.Objects;

@Getter
public class SelectedItemsDto {

    //view에서 전달받은 데이터
    private Long prod_id; //상품번호
    private String opt_prod_id; //옵션상품번호
    private Integer qty; //상품수량

    //DB에서 꺼내야하는 데이터
    private SampleProductDto sampleProductDto;


    //만들어 내야하는 데이터 <- 상품별
    private Integer total_prod_price; //각 상품의 총 주문 금액
    private Integer origin_prod_price; //각 상품의 총 원래 금액

    //form태그의 데이터를 전달받기위한 list
    private List<SelectedItemsDto> items;

    SelectedItemsDto(){}

    public SelectedItemsDto(Long prod_id, String opt_prod_id, Integer qty) {
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
        this.qty = qty;
    }

    public void calculateProductTotal(){
        if(opt_prod_id == null){ //option상품이 아닐때
            total_prod_price = sampleProductDto.getDisc_price() * qty;
            origin_prod_price = sampleProductDto.getProd_price() * qty;
        }else { //option상품일때
            total_prod_price = sampleProductDto.getOpt_disc_price() *qty;
            origin_prod_price = sampleProductDto.getOpt_price() *qty;
        }
    }

    public void setProd_id(Long prod_id) {
        this.prod_id = prod_id;
    }

    public void setOpt_prod_id(String opt_prod_id) {
        this.opt_prod_id = opt_prod_id;
    }

    public void setQty(Integer qty) {
        this.qty = qty;
    }

    public void setSampleProductDto(SampleProductDto sampleProductDto) {
        this.sampleProductDto = sampleProductDto;
    }

    public void setTotal_prod_price(Integer total_prod_price) {
        this.total_prod_price = total_prod_price;
    }

    public void setOrigin_prod_price(Integer origin_prod_price) {
        this.origin_prod_price = origin_prod_price;
    }

    public void setItems(List<SelectedItemsDto> items) {
        this.items = items;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SelectedItemsDto that = (SelectedItemsDto) o;
        return Objects.equals(prod_id, that.prod_id) && Objects.equals(opt_prod_id, that.opt_prod_id) && Objects.equals(qty, that.qty) && Objects.equals(sampleProductDto, that.sampleProductDto) && Objects.equals(total_prod_price, that.total_prod_price) && Objects.equals(origin_prod_price, that.origin_prod_price) && Objects.equals(items, that.items);
    }

    @Override
    public int hashCode() {
        return Objects.hash(prod_id, opt_prod_id, qty, sampleProductDto, total_prod_price, origin_prod_price, items);
    }

    @Override
    public String toString() {
        return "SelectedItemsDto{" +
                "prod_id=" + prod_id +
                ", opt_prod_id='" + opt_prod_id + '\'' +
                ", qty=" + qty +
                ", sampleProductDto=" + sampleProductDto +
                ", total_prod_price=" + total_prod_price +
                ", origin_prod_price=" + origin_prod_price +
                ", items=" + items +
                '}';
    }
}
