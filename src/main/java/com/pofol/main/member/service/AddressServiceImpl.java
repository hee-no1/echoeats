package com.pofol.main.member.service;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.repository.AddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {
    @Autowired
    AddressRepository addressRepository;

    @Override
    public int regAddress(AddressDto addressDto) throws Exception {
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
        return addressRepository.updateAddress(addressDto);
    }

    @Override
    public int removeAddress(String addr_id) throws Exception {
        return addressRepository.deleteAddress(addr_id);
    }
}
