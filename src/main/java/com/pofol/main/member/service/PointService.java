package com.pofol.main.member.service;

import com.pofol.main.member.dto.PointDto;

import java.awt.*;
import java.util.List;

public interface PointService {
    int regPoint(PointDto pointDto) throws Exception;   //적립금 등록
    List<PointDto> getAllPoint(String mem_id) throws Exception; //적립금 내역 읽기
    PointDto getPoint(String point_id) throws Exception;    //적립금 읽기
    int modifyPoint(PointDto pointDto) throws Exception;    //적립금 수정
    int removePoint(String point_id) throws Exception;  //적립금 소멸
}
