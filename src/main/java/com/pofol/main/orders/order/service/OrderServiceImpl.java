package com.pofol.main.orders.order.service;

import com.pofol.main.orders.order.domain.*;
import com.pofol.main.orders.order.repository.OrderDetailRepository;
import com.pofol.main.orders.order.repository.OrderHistoryRepository;
import com.pofol.main.orders.order.repository.OrderRepository;
import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.orders.payment.repository.PaymentDiscountRepository;
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
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;
    private final OrderHistoryRepository orderHistoryRepository;
    private final PaymentDiscountRepository paymentDiscountRepository;

    @Autowired
    public OrderServiceImpl(SampleMemberRepository memRepo, SampleProductRepository prodRepo, OrderRepository orderRepository, OrderDetailRepository orderDetailRepository, OrderHistoryRepository orderHistoryRepository, PaymentDiscountRepository paymentDiscountRepository) {
        this.memRepo = memRepo;
        this.prodRepo = prodRepo;
        this.orderRepository = orderRepository;
        this.orderDetailRepository = orderDetailRepository;
        this.orderHistoryRepository = orderHistoryRepository;
        this.paymentDiscountRepository = paymentDiscountRepository;
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
        int tot_ord_qty = items.size(); //총 상품 수량

        try{
            if(firstItem.getOpt_prod_id() == null){ //일반 상품일 때
                tot_prod_name = firstProd.getProd_name();
            } else { //option 상품일 때
                tot_prod_name = firstProd.getOpt_prod_name();
            }

            if(tot_ord_qty == 1){ //상품수량이 1개일 때
                tot_prod_name += "상품을 주문합니다.";
            } else {//상품수량이 2개 이상일 때
                tot_prod_name += " 외 " + (tot_ord_qty-1) +"개의 상품을 주문합니다.";
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


    @Override
    public void writeOrder(OrderCheckout oc) {
        System.out.println("writeOrder 주문서 = " + oc);
        List<SelectedItemsDto> items = oc.getSelectedItems();

        String mem_id = "you11"; //회원id 가져오기
        //주문 table 작성
        OrderDto orderDto = new OrderDto(mem_id, oc.getTot_prod_name(), oc.getTot_prod_price(), oc.getTot_pay_price(), oc.getOrigin_prod_price() - oc.getTot_prod_price(), items.size(), oc.getDlvy_fee(), oc.getPay_way(), items.size(), mem_id, mem_id);
        try {
            orderRepository.insert(orderDto);
            Long ord_id = orderDto.getOrd_id();

            //주문 상세 table 작성
            for (SelectedItemsDto item : items) {
                SampleProductDto prod = prodRepo.selectRequiredProduct(item);
                item.setSampleProductDto(prod);
                item.calculateProductTotal();

                OrderDetailDto orderDetailDto;
                if(item.getOpt_prod_id() == null || item.getOpt_prod_id().isEmpty() ){ //일반 상품일 때
                    orderDetailDto = new OrderDetailDto(ord_id, mem_id, item.getProd_id(), "ORDERING", prod.getProd_name(), item.getQty(), prod.getDisc_price() * item.getQty(), prod.getPack_type(), mem_id, mem_id);
                }else { //option 상품일 때
                    orderDetailDto = new OrderDetailDto(ord_id, mem_id, item.getProd_id(), item.getOpt_prod_id(), "ORDERING", prod.getOpt_prod_name(), item.getQty(), prod.getOpt_disc_price() * item.getQty(), prod.getPack_type(), mem_id, mem_id);
                }
                orderDetailRepository.insert(orderDetailDto);
            }

            //주문 이력 table 작성
            OrderHistoryDto orderHistoryDto = new OrderHistoryDto(ord_id, mem_id, "ORDERING", oc.getTot_prod_name(), oc.getTot_prod_price(), oc.getTot_pay_price(), items.size(), oc.getPay_way(), mem_id, mem_id);
            orderHistoryRepository.insert(orderHistoryDto);

            //할인 금액 정보 table 작성
            PaymentDiscountDto paymentDiscountDto = new PaymentDiscountDto(ord_id, oc.getProd_disc(), oc.getCoupon_disc(), oc.getPoint_used());
            paymentDiscountRepository.insert(paymentDiscountDto);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }

    }

}
