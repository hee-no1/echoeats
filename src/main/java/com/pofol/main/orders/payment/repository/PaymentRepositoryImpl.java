package com.pofol.main.orders.payment.repository;

import com.pofol.main.orders.payment.domain.PaymentDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class PaymentRepositoryImpl implements PaymentRepository{

    private final SqlSession session;
    private String namespace = "payment.repository.paymentMapper.";

    @Override
    public int insert(PaymentDto paymentDto) throws Exception{
        return session.insert(namespace+"insert",paymentDto);
    }

    @Override
    public PaymentDto select(String pay_id) throws Exception {
        return session.selectOne(namespace+"select",pay_id);
    }

    @Override
    public int updateStatus(PaymentDto paymentDto) throws Exception{
        return session.update(namespace+"updateStatus",paymentDto);
    }

    @Override
    public int delete(String pay_id) throws Exception {
        return session.delete(namespace+"delete",pay_id);
    }

    @Override
    public List<PaymentDto> selectAll() throws Exception {
        return session.selectList(namespace+"selectAll");
    }

    @Override
    public int deleteAll() throws Exception {
        return session.delete(namespace+"deleteAll");
    }

    @Override
    public int count() throws Exception {
        return session.selectOne(namespace+"count");
    }

}
