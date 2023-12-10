package com.pofol.main.orders.payment.repository;

import com.pofol.main.orders.payment.domain.PaymentHistoryDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class PaymentHistoryRepositoryImpl implements PaymentHistoryRepository{

    private final SqlSession session;
    private String namespace = "payment.repository.paymentHistoryMapper.";

    @Override
    public int insert(PaymentHistoryDto paymentHistoryDto) throws Exception {
        return session.insert(namespace+"insert",paymentHistoryDto);
    }

    @Override
    public PaymentHistoryDto selectOne(Long pay_hist_id) throws Exception {
        return session.selectOne(namespace+"selectOne",pay_hist_id);
    }

    @Override
    public List<PaymentHistoryDto> selectList(Long pay_hist_id) throws Exception {
        return session.selectList(namespace+"selectList",pay_hist_id);
    }

    @Override
    public int deleteList(Long pay_hist_id) throws Exception {
        return session.delete(namespace+"deleteList",pay_hist_id);
    }
}
