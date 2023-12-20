package com.pofol.main.orders.sample.memberSample;

import lombok.Getter;

import java.util.Objects;

@Getter
public class SampleMemberDto {
    private String mem_id;
    private Long own_cp_id;
    private String gd_name;
    private String mem_name;
    private String mem_email;
    private String mem_phone;

    public SampleMemberDto(){}
    public SampleMemberDto(String mem_id, Long own_cp_id, String gd_name, String mem_name, String mem_email, String mem_phone) {
        this.mem_id = mem_id;
        this.own_cp_id = own_cp_id;
        this.gd_name = gd_name;
        this.mem_name = mem_name;
        this.mem_email = mem_email;
        this.mem_phone = mem_phone;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public void setOwn_cp_id(Long own_cp_id) {
        this.own_cp_id = own_cp_id;
    }

    public void setGd_name(String gd_name) {
        this.gd_name = gd_name;
    }

    public void setMem_name(String mem_name) {
        this.mem_name = mem_name;
    }

    public void setMem_email(String mem_email) {
        this.mem_email = mem_email;
    }

    public void setMem_phone(String mem_phone) {
        this.mem_phone = mem_phone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SampleMemberDto that = (SampleMemberDto) o;
        return Objects.equals(mem_id, that.mem_id) && Objects.equals(own_cp_id, that.own_cp_id) && Objects.equals(gd_name, that.gd_name) && Objects.equals(mem_name, that.mem_name) && Objects.equals(mem_email, that.mem_email) && Objects.equals(mem_phone, that.mem_phone);
    }

    @Override
    public int hashCode() {
        return Objects.hash(mem_id, own_cp_id, gd_name, mem_name, mem_email, mem_phone);
    }

    @Override
    public String toString() {
        return "MemberDtoSample{" +
                "mem_id='" + mem_id + '\'' +
                ", own_cp_id=" + own_cp_id +
                ", gd_name='" + gd_name + '\'' +
                ", mem_name='" + mem_name + '\'' +
                ", mem_email='" + mem_email + '\'' +
                ", mem_phone='" + mem_phone + '\'' +
                '}';
    }
}
