package com.pofol.main.member.repository;

import com.pofol.main.member.dto.PointDto;

import java.util.List;

public interface PointRepository {
    int insertPoint(PointDto pointDto) throws Exception;    //적립금 등록
    List<PointDto> selectAllPoint(String mem_id) throws Exception;  //사용자 보유 적립금 내역 읽기
    PointDto selectPoint(String point_id) throws Exception; //사용자 보유 적립금 하나 읽기
    int updatePoint(PointDto pointDto) throws Exception;    //적립금 수정
    int deletePoint(String point_id) throws Exception;  //적립금 소멸
    int sumPoint(String mem_id) throws Exception;   //지금까지 적립된 총 금액
    int accumulatePoint(String mem_id) throws Exception; //적립한 총 적립금액;
    int usePoint(String mem_id) throws Exception; //사용한 총 적립금액
    int countPoint(String mem_id) throws Exception; //적립금 총 갯수
    int preExtinctPoint(String mem_id) throws Exception;    //소멸예정 총 적립금액
}
