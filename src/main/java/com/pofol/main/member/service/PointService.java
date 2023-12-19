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
    int getSumPoint(String mem_id) throws Exception;    //총 적립금 금액
    int getAvailablePoint(String mem_id) throws Exception;  //총 사용가능한 적립금 금액
    int getCountPoint(String mem_id) throws Exception;  //적립금 총 갯수
    int getPreExtinctPoint(String mem_id) throws Exception; //소멸예정 적립금
}
