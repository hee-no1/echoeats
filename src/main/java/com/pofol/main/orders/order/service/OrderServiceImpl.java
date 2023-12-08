package com.pofol.main.orders.order.service;

import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import com.pofol.main.orders.sample.memberSample.SampleMemberDto;
import com.pofol.main.orders.sample.memberSample.SampleMemberRepository;
import com.pofol.main.orders.sample.productSample.SampleProductDto;
import com.pofol.main.orders.sample.productSample.SampleProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{

    private final SampleMemberRepository memRepo;
    private final SampleProductRepository prodRepo;

    @Autowired
    public OrderServiceImpl(SampleMemberRepository memRepo, SampleProductRepository prodRepo) {
        this.memRepo = memRepo;
        this.prodRepo = prodRepo;
    }

    @Override
    public OrderCheckout writeCheckout(List<SelectedItemsDto> items) {

        int tot_prod_price = 0; //총 주문 금액;
        int origin_prod_price = 0; //총 원래 상품 금액;
        int dlvy_fee = 0;
        String tot_prod_name; //총 상품명

        OrderCheckout oc = new OrderCheckout(items);

        try{
            for (SelectedItemsDto item : items) {
                SampleProductDto prod = prodRepo.selectRequiredProduct(item);
                item.setSampleProductDto(prod);

                if(item.getOpt_prod_id() == null){ //일반 상품일 때
                    tot_prod_price += prod.getDisc_price() * item.getQty(); //총 주문금액 계산
                    origin_prod_price += prod.getProd_price() * item.getQty(); //총 원래 상품 금액
                }else{ //option상품일 때
                    tot_prod_price += prod.getOpt_disc_price() * item.getQty();
                    origin_prod_price += prod.getOpt_price() * item.getQty();
                }

                item.calculateProductTotal(); //각 상품별 총 주문금액과 원래 금액 계산
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        oc.setTot_prod_price(tot_prod_price);
        oc.setOrigin_prod_price(origin_prod_price);


        //배송비 구하기
        if(tot_prod_price < 40000){
            dlvy_fee = 3000;
        }
        oc.setDlvy_fee(dlvy_fee);


        //총 상품명 구하기
        SelectedItemsDto firstItem = items.get(0);
        SampleProductDto firstProd = firstItem.getSampleProductDto();
        int tot_prod_qty = items.size(); //총 상품 수량

        try{
            if(firstItem.getOpt_prod_id() == null){ //일반 상품일 때
                tot_prod_name = firstProd.getProd_name();
            } else { //option 상품일 때
                tot_prod_name = firstProd.getOpt_prod_name();
            }

            if(tot_prod_qty == 1){ //상품수량이 1개일 때
                tot_prod_name += "상품을 주문합니다.";
            } else {//상품수량이 2개 이상일 때
                tot_prod_name += " 외 " + (tot_prod_qty-1) +"개의 상품을 주문합니다.";
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        oc.setTot_prod_name(tot_prod_name);


        //회원 정보 DB에서 꺼내오기
        String mem_id = "you11"; //나중에 세션에서 가지고 온다.
        try {
            SampleMemberDto mem = memRepo.selectMember(mem_id);
            oc.setSampleMemberDto(mem);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return oc;
    }

    public OrderDto writeOrder(){
        return null;
    }
}
