package com.pofol.main.member.service;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.repository.AddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {
    @Autowired
    AddressRepository addressRepository;

    @Override
    public int regAddress(AddressDto addressDto) throws Exception {
        //새로운 주소를 기본 배송지로 등록했을 때
        if(addressDto.getDef_addr().equals("Y")){
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            List<AddressDto> addressDtos= addressRepository.selectAllAddress(authentication.getName());

            for(int i = 0; i<addressDtos.size(); i++){
                addressDtos.get(i).setDef_addr("N");
                addressRepository.updateAddress(addressDtos.get(i));
            }
            addressDto.setDef_addr("Y");
        }
        return addressRepository.insertAddress(addressDto);
    }

    @Override
    public List<AddressDto> getAddresses(String mem_id) throws Exception {
        return addressRepository.selectAllAddress(mem_id);
    }
    
    @Override
	public AddressDto getDefaultAddress(String mem_id) throws Exception {
		return addressRepository.selectDefaultAddress(mem_id);
	}

    @Override
    public AddressDto getAddress(String addr_id) throws Exception {
        return addressRepository.selectAddress(addr_id);
    }

    @Override
    public int modifyAddress(AddressDto addressDto) throws Exception {
        if(addressDto.getDef_addr().equals("Y")){

            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            List<AddressDto> addressDtos= addressRepository.selectAllAddress(authentication.getName());

            for(int i = 0; i<addressDtos.size(); i++){
                addressDtos.get(i).setDef_addr("N");
                addressRepository.updateAddress(addressDtos.get(i));
            }

            addressDto.setDef_addr("Y");
            addressRepository.updateAddress(addressDto);
            return 1;
        }
        try{
            return addressRepository.updateAddress(addressDto);
        }catch (Exception e){
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public int removeAddress(String addr_id) throws Exception {
        //기본 배송지를 삭제했을때 제일 위에 있는 배송지를 기본배송지로 설정
        AddressDto addressDto = addressRepository.selectAddress(addr_id);
        if(addressDto.getDef_addr().equals("Y")){
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            List<AddressDto> addressDtos= addressRepository.selectAllAddress(authentication.getName());
            addressDtos.get(0).setDef_addr("Y");
            addressRepository.updateAddress(addressDtos.get(0));
        }
        return addressRepository.deleteAddress(addr_id);
    }

    @Override
    public AddressDto getDefaultAddress(String mem_id) throws Exception {
        return addressRepository.selectDefaultAddress(mem_id);
    }
}
