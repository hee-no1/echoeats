package com.pofol.main.orders.order.service;

import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import com.pofol.main.orders.sample.productSample.RequiredProductDto;
import com.pofol.main.orders.sample.productSample.RequiredProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{

    OrderDto orderDto;
    private final RequiredProductRepository rpr;

    @Autowired
    public OrderServiceImpl(RequiredProductRepository rpr) {
        this.rpr = rpr;
    }

    @Override
    public OrderDto calculateProductInfo(List<SelectedItemsDto> items) {
        int tot_prod_price = 0; //실 주문 금액
        int tot_prod_qty = items.size(); //총 상품 수량
        String tot_prod_name; //총 상품명
        int dlvy_fee = 0; //배송비

        //실 주문 금액 구하기
        try{
            for (SelectedItemsDto item : items) {
                RequiredProductDto rpd = rpr.selectRequiredProduct(item);
                if(rpd.getOpt_prod_id() != null){ //option상품일때
                    tot_prod_price += rpd.getOpt_disc_price() * item.getQty();
                }else { //일반상품일때
                    tot_prod_price += rpd.getDisc_price() * item.getQty();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        //배송비 구하기
        if(tot_prod_price < 30000){
            dlvy_fee = 3000;
        }

        //총 상품명 구하기
        SelectedItemsDto item1 = items.get(0);
        RequiredProductDto firstItem;
        try {
            firstItem = rpr.selectRequiredProduct(item1);
            if(firstItem.getOpt_prod_id() != null){ //option상품일때
                tot_prod_name = firstItem.getOpt_prod_name();
            }else { //일반상품일때
                tot_prod_name = firstItem.getProd_name();
            }

            if(tot_prod_qty == 1){ tot_prod_name += "상품을 주문합니다."; } //상품수량이 1개일 때
            else{ tot_prod_name += " 외 " + (tot_prod_qty-1) +"개의 상품을 주문합니다."; } //상품수량이 2개 이상일 때

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(orderDto);
        System.out.println(tot_prod_name);
        System.out.println(tot_prod_price);
        orderDto = new OrderDto();
        orderDto.setTot_prod_name(tot_prod_name);
        System.out.println(orderDto);
        return orderDto;
    }

    @Override
    public OrderDto getOrder() {
        return orderDto;
    }
}
