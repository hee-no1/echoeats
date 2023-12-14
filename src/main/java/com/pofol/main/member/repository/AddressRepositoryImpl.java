package com.pofol.main.member.repository;

import com.pofol.main.member.dto.AddressDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AddressRepositoryImpl implements AddressRepository{
    @Autowired
    private SqlSession session;
    private final String namespace = "com.pofol.main.member.addressMapper.";

    @Override
    public int insertAddress(AddressDto addressDto) throws Exception {
        return session.insert(namespace + "insert_address",addressDto);
    }

    @Override
    public List<AddressDto> selectAllAddress(String mem_id) throws Exception {
        return session.selectList(namespace + "selectAll_address", mem_id);
    }

    @Override
    public AddressDto selectAddress(String addr_id) throws Exception {
        return session.selectOne(namespace + "select_address",addr_id);
    }

    @Override
    public int updateAddress(AddressDto addressDto) throws Exception {
        return session.update(namespace + "update_address",addressDto);
    }

    @Override
    public int deleteAddress(String addr_id) throws Exception {
        return session.delete(namespace + "delete_address" + addr_id);
    }
}
