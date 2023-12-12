package com.pofol.main.member.repository;

import com.pofol.main.member.dto.AddressDto;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.*;
@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class AddressRepositoryImplTest {
    @Autowired
    AddressRepository addressRepository;
    @Test
    void insertAddress() throws Exception {
        AddressDto addressDto = new AddressDto("asd123","111","qwasdzz","Y");
        int i = addressRepository.insertAddress(addressDto);
        Assertions.assertThat(i).isEqualTo(1);
    }
}