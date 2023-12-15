package com.pofol.main.member.service;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.repository.AddressRepository;
import okhttp3.Address;

import java.util.List;

public interface AddressService {
    int regAddress(AddressDto addressDto) throws Exception; // 주소 등록
    List<AddressDto> getAddresses(String mem_id) throws Exception; //주소리스트 읽기
    AddressDto getDefaultAddress(String mem_id) throws Exception; // 회원아이디로 기본배송지 읽기
    AddressDto getAddress(String addr_id) throws Exception;     //주소 읽기
    int modifyAddress(AddressDto addressDto) throws Exception;  //주소 수정
    int removeAddress(String addr_id) throws Exception;
}
