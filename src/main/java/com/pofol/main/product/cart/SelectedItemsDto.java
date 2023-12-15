package com.pofol.main.product.cart;

import com.pofol.main.orders.order.domain.ProductOrderCheckout;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SelectedItemsDto {

    //view에서 전달받은 데이터
    private Long prod_id; //상품번호
    private String opt_prod_id; //옵션상품번호
    private Integer qty; //상품수량

    //DB에서 꺼내야하는 데이터
    private ProductOrderCheckout productOrderCheckout;


    //만들어 내야하는 데이터 <- 상품별
    private Integer total_prod_price; //각 상품의 총 주문 금액
    private Integer origin_prod_price; //각 상품의 총 원래 금액

    //form태그의 데이터를 전달받기위한 list
    private List<SelectedItemsDto> items;

    public SelectedItemsDto(Long prod_id, String opt_prod_id, Integer qty) {
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
        this.qty = qty;
    }

    public void calculateProductTotal(){
        if(opt_prod_id == null || opt_prod_id.isEmpty()){ //option상품이 아닐때
            total_prod_price = productOrderCheckout.getDisc_price() * qty;
            origin_prod_price = productOrderCheckout.getProd_price() * qty;
        }else { //option상품일때
            total_prod_price = productOrderCheckout.getOpt_disc_price() *qty;
            origin_prod_price = productOrderCheckout.getOpt_price() *qty;
        }
    }
}
