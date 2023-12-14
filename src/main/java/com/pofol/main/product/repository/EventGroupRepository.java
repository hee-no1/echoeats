package com.pofol.main.product.repository;

import com.pofol.main.product.domain.EventGroupDto;

public interface EventGroupRepository {

    int insert(EventGroupDto eventGroupDto) throws Exception;

    int delete(Long evt_gp_id) throws Exception;
}
