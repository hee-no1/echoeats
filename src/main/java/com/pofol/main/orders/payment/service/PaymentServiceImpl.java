package com.pofol.main.orders.payment.service;

import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import com.pofol.main.orders.sample.memberSample.SampleMemberRepository;
import com.pofol.main.orders.sample.productSample.SampleProductDto;
import com.pofol.main.orders.sample.productSample.SampleProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService{

    private final SampleProductRepository sampleProductRepository;

    @Autowired
    public PaymentServiceImpl(SampleProductRepository sampleProductRepository) {
        this.sampleProductRepository = sampleProductRepository;
    }

    @Override
    public Boolean prevVerify(OrderCheckout oc) {
        List<SelectedItemsDto> items = oc.getSelectedItems();
        int jsTotPayPrice = oc.getTot_pay_price(); //js에서 넘어온 실 결제 금액
        int dbTotPayPrice = 0; //

        for (SelectedItemsDto item : items) {
            String opt_prod_id = item.getOpt_prod_id();
            Integer qty = item.getQty();
            try{
                if(opt_prod_id == null || opt_prod_id.isEmpty()){ //일반 상품일 때
                    SampleProductDto prod = sampleProductRepository.selectProduct(item.getProd_id());
                    dbTotPayPrice += prod.getDisc_price() * qty;
                }else { //옵션 상품일 때
                    SampleProductDto prod = sampleProductRepository.selectOptionProduct(item.getOpt_prod_id());
                    dbTotPayPrice += prod.getOpt_disc_price() * qty;
                }
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException(e);
            }
        }
        if(dbTotPayPrice < 40000){ //배송비 추가
            dbTotPayPrice += 3000;
        }

        System.out.println("jsTotPayPrice = " + jsTotPayPrice);
        System.out.println("dbTotPayPrice = " + dbTotPayPrice);
        return jsTotPayPrice == dbTotPayPrice; //같으면 true, 다르면 false
    }
}
