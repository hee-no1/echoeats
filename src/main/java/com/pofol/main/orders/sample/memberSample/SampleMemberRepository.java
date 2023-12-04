package com.pofol.main.orders.sample.memberSample;

public interface SampleMemberRepository {

    SampleMemberDto selectMember(String mem_id) throws Exception;
}
