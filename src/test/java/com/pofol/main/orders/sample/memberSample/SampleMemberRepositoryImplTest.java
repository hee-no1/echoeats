package com.pofol.main.orders.sample.memberSample;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class SampleMemberRepositoryImplTest {

    @Autowired
    SampleMemberRepository sampleMemberRepository;

    @Test
    @DisplayName("sampleMember DB에서 가져오는 테스트")
    public void test1() throws Exception {
        String id = "you11";
        SampleMemberDto sampleMemberDto = sampleMemberRepository.selectMember(id);
        System.out.println(sampleMemberDto);
    }

}