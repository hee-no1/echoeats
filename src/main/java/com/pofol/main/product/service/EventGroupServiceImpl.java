package com.pofol.main.product.service;

import com.pofol.main.product.domain.EventGroupDto;
import com.pofol.main.product.repository.EventGroupRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EventGroupServiceImpl implements EventGroupService{

    private final EventGroupRepository eventGroupRepository;

    @Override
    public EventGroupDto getEvent(Long evt_gp_id) throws Exception {
        return eventGroupRepository.select(evt_gp_id);
    }
}
