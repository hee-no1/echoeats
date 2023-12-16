package com.pofol.main.member.service;

import com.pofol.main.member.dto.PointDto;
import com.pofol.main.member.repository.PointRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PointServiceImpl implements PointService{
    @Autowired
    PointRepository pointRepository;

    @Override
    public int regPoint(PointDto pointDto) throws Exception {
        return pointRepository.insertPoint(pointDto);
    }

    @Override
    public List<PointDto> getAllPoint(String mem_id) throws Exception {
        return pointRepository.selectAllPoint(mem_id);
    }

    @Override
    public PointDto getPoint(String point_id) throws Exception {
        return pointRepository.selectPoint(point_id);
    }

    @Override
    public int modifyPoint(PointDto pointDto) throws Exception {
        return pointRepository.updatePoint(pointDto);
    }

    @Override
    public int removePoint(String point_id) throws Exception {
        return pointRepository.deletePoint(point_id);
    }
}
