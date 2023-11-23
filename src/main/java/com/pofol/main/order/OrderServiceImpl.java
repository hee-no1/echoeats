package com.pofol.main.order;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{

    @Override
    public Boolean verifyPayment(TotalProductsDto totalProduct) {
        //TotalProductsDto: 주문서를 거쳐 넘어온 상품들의 정보

        //총 상품 구매 금액
        int totalProductPrice = totalProduct.getTotalProductPrice();

        //기대값
        int computedPrice = 0;

        /*
            TotalProductsDto에 있는 각 상품들의 상품번호 가져오고,
            이것을 통해 상품Table에서 각 상품의 금액을 가져와 상품 수량과 computed를 해서
            js에서 가져온 총 상품 구매 금액과 비교해야한다.
        */

        //주문한 상품 list
        List<SelectedItemsDto> selectedItems = totalProduct.getSelectedItems();

        for (SelectedItemsDto selectedItem : selectedItems) {
            System.out.println(selectedItem);
            ProductDto dealProductNo = selectedItem.getDealProductNo();

            //상품의 가격 <- 이 부분을 원래는 상품Table에서 가지고 와야한다!
            int price = dealProductNo.getPrice();

            //해당 상품의 수량
            int quantity = selectedItem.getQuantity();

            computedPrice += price * quantity;
        }

        System.out.println(totalProductPrice);
        System.out.println(computedPrice);

        if(totalProductPrice == computedPrice){
            return true;
        }

        return false;

    }
}
