package com.pofol.main.order;

import com.pofol.main.order.orderProductTest.*;
import com.pofol.main.order.orderTable.OrderDBService;
import com.pofol.main.order.paymentData.PaymentDataDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{

    @Autowired
    OrderProductService orderProductService;

    @Autowired
    OrderDBService orderDBService; //주문 테이블


    @Override
    public Boolean verifyPayment(PaymentDataDto paymentData) {
        //PaymentDataDto: 주문서를 거쳐 넘어온 정보

        //TotalProductsDto: 주문서를 거쳐 넘어온 상품들의 정보
        TotalProductsDto totalProducts = paymentData.getTotalProducts();

        //총 상품 구매 금액
        int totalProductPrice = totalProducts.getTot_prod_price();

        //기대값
        int computedPrice = 0;

        /*
            TotalProductsDto에 있는 각 상품들의 상품번호 가져오고,
            이것을 통해 상품Table에서 각 상품의 금액을 가져와 상품 수량과 computed를 해서
            js에서 가져온 총 상품 구매 금액과 비교해야한다.
        */

        //주문한 상품 list
        List<SelectedItemsDto> selectedItems = totalProducts.getSelectedItems();

        for (SelectedItemsDto selectedItem : selectedItems) {
            System.out.println(selectedItem);
            ProductDto dealProductNo = selectedItem.getDealProductNo();

            //상품의 이름 가져오기
            String productName = dealProductNo.getName();

            //상품 table에서 상품 금액 가지고오기
            ProductDto productDB = null;
            try {
                productDB = orderProductService.select(productName);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
            int price = productDB.getPrice();

            //해당 상품의 수량
            int quantity = selectedItem.getQty();

            computedPrice += price * quantity;
        }

        System.out.println(totalProductPrice);
        System.out.println(computedPrice);

        if(totalProductPrice == computedPrice){
            System.out.println("성공");
            orderDBService.insert(paymentData);
            return true;
        }

        System.out.println("실패");
        return false;

    }


}
