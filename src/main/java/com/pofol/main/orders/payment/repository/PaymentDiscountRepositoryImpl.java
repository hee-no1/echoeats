package com.pofol.main.orders.payment.repository;

import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@RequiredArgsConstructor
public class PaymentDiscountRepositoryImpl implements PaymentDiscountRepository {

    private final SqlSession session;
    private String namespace = "order.repository.payDiscountMapper.";


    @Override
    public int insert(PaymentDiscountDto paymentDiscountDto) throws Exception {
        return session.insert(namespace+"insert",paymentDiscountDto);
    }

    @Override
    public PaymentDiscountDto select(Long ord_id) throws Exception {
        return session.selectOne(namespace+"select",ord_id);
    }

    @Override
    public int delete(Long ord_id) throws Exception {
        return session.delete(namespace+"delete",ord_id);
    }

    @Override
    public List<PaymentDiscountDto> selectAll() throws Exception {
        return session.selectList(namespace+"selectAll");
    }

    @Override
    public int count() throws Exception {
        return session.selectOne(namespace+"count");
    }
}
