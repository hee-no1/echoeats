package com.pofol.main.product.repository;

import com.pofol.main.product.domain.EventGroupDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class EventGroupRepositoryImpl implements EventGroupRepository{

    private final SqlSession sqlSession;
    private final String namespace = "com.pofol.main.product.domain.EventGroupDto.";

    // 관리자 페이지에서 사용
    @Override
    public int insert(EventGroupDto eventGroupDto) throws Exception {
        return sqlSession.insert(namespace + "insert", eventGroupDto);
    }

    @Override
    public int delete(Long evt_gp_id) throws Exception {
        return sqlSession.delete(namespace + "delete", evt_gp_id);
    }
}
