package com.pofol.main.orderTable;

import com.pofol.main.order.PaymentDataDto;
import com.pofol.main.order.TotalProductsDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderDBServiceImpl implements OrderDBService{

    @Autowired
    OrderDao orderDao;


    @Override
    public void insert(PaymentDataDto paymentDataDto) { //매개변수로 주문서에서 전달받은 데이터가 들어간다.
        TotalProductsDto prods = paymentDataDto.getTotalProducts();

        OrderDto orderDto = new OrderDto("qwer", prods.getTot_prod_name(), prods.getTot_prod_price(), prods.getTot_pay_price(), prods.getTot_ord_qty(), "kakaopay", prods.getTot_ord_qty());
        //원래 mem_id, kakaopay도 받아와야한다!

        try {
            orderDao.insert(orderDto);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
