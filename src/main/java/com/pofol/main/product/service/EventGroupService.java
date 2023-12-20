package com.pofol.main.product.service;

import com.pofol.main.product.domain.EventGroupDto;

public interface EventGroupService {

    EventGroupDto getEvent(Long evt_gp_id) throws Exception;
}
