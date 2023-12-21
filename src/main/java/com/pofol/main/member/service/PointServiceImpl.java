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

    @Override   //총 적립금 리스트로 가져오기
    public List<PointDto> getAllPoint(String mem_id) throws Exception {
        return pointRepository.selectAllPoint(mem_id);
    }

    @Override   //적립금 하나 가져오기
    public PointDto getPoint(String point_id) throws Exception {
        return pointRepository.selectPoint(point_id);
    }

    @Override   //적립금 수정하기
    public int modifyPoint(PointDto pointDto) throws Exception {
        return pointRepository.updatePoint(pointDto);
    }

    @Override   //적립금 삭제하기
    public int removePoint(String point_id) throws Exception {
        return pointRepository.deletePoint(point_id);
    }

    @Override   //총 적립금
    public int getSumPoint(String mem_id) throws Exception {
        return pointRepository.sumPoint(mem_id);
    }

    @Override   //사용가능한 총 적립금
    public int getAvailablePoint(String mem_id) throws Exception {
        return pointRepository.accumulatePoint(mem_id) - pointRepository.usePoint(mem_id);
    }

    @Override
    public int getAccumulatePoint(String mem_id) throws Exception {
        return pointRepository.accumulatePoint(mem_id);
    }

    @Override
    public int getUsePoint(String mem_id) throws Exception {
        return pointRepository.usePoint(mem_id);
    }

    @Override
    public int getCountPoint(String mem_id) throws Exception {
        return pointRepository.countPoint(mem_id);
    }

    @Override
    public int getPreExtinctPoint(String mem_id) throws Exception {
        return pointRepository.preExtinctPoint(mem_id);
    }


}
