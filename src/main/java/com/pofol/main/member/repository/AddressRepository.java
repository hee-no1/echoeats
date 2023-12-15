package com.pofol.main.member.repository;

import com.pofol.main.member.dto.AddressDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

public interface AddressRepository {
    int insertAddress(AddressDto addressDto) throws Exception;  //주소 등록
    List<AddressDto> selectAllAddress(String mem_id) throws Exception; //등록된 주소 읽기
    public AddressDto selectDefaultAddress(String mem_id) throws Exception; // 회원아이디로 기본배송지 읽기
    AddressDto selectAddress(String addr_id) throws Exception;  //주소 하나 읽기
    int updateAddress(AddressDto addressDto) throws Exception;  //주소 수정
    int deleteAddress(String addr_id) throws Exception; //  주소 삭제
}
