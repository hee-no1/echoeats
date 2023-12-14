package com.pofol.main.orders.payment.service;

import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.order.repository.OrderRepository;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.orders.payment.domain.PaymentHistoryDto;
import com.pofol.main.orders.payment.repository.PaymentHistoryRepository;
import com.pofol.main.orders.payment.repository.PaymentRepository;
import com.pofol.main.product.basket.SelectedItemsDto;
import com.pofol.main.product.basket.BasketRepository;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PaymentServiceImpl implements PaymentService{

    private final BasketRepository basketRepository;
    private final OrderRepository orderRepository;
    private final PaymentRepository paymentRepository;
    private final PaymentHistoryRepository paymentHistoryRepository;


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
                    ProductDto prod = basketRepository.selectProduct(item.getProd_id());
                    dbTotPayPrice += prod.getDisc_price() * qty;
                }else { //옵션 상품일 때
                    OptionProductDto prod = basketRepository.selectOptionProduct(item.getOpt_prod_id());
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

        dbTotPayPrice -= (oc.getCoupon_disc() + oc.getPoint_used());

        System.out.println("jsTotPayPrice = " + jsTotPayPrice);
        System.out.println("dbTotPayPrice = " + dbTotPayPrice);
        return jsTotPayPrice == dbTotPayPrice; //같으면 true, 다르면 false
    }


    @Override
    public PaymentDto writePayment(PaymentDto pay) {
        System.out.println("pay: " + pay);
        //결제 table 작성
        String mem_id = "you11"; //나중에 session에서 꺼내와야한다.
        pay.setMemberData(mem_id);
        try {
            System.out.println("payment insert 전"+pay);
            paymentRepository.insert(pay);
            System.out.println("payment insert 후"+pay);

            //결제이력 table 작성
            PaymentHistoryDto paymentHistoryDto = new PaymentHistoryDto(pay.getPay_id(), pay.getOrd_id(), pay.getMem_id(), pay.getCode_name(), pay.getPay_way(), pay.getTot_prod_name(), pay.getTot_pay_price(), pay.getPg_tid(), pay.getMem_id(), pay.getMem_id());
            System.out.println("payHist: "+paymentHistoryDto);
            paymentHistoryRepository.insert(paymentHistoryDto);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return pay;
    }


    @Override
    public Boolean nextVerify(PaymentDto pd) {
        int jsTotPayPrice = pd.getTot_pay_price(); //js에서 넘어온 실 결제 금액
        int dbTotPayPrice = 0;

        try {
            OrderDto orderDto = orderRepository.select(pd.getOrd_id());
            dbTotPayPrice = orderDto.getTot_pay_price(); //주문table에서 실 결제 금액 가져옴(1차 검증 성공 후 db에 저장한 것)

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println("2차 검증: "+(jsTotPayPrice==dbTotPayPrice));
        return jsTotPayPrice == dbTotPayPrice; //같은면 true, 다르면 false
    }
}
