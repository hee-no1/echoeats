package com.pofol.main.orders.sample.memberSample;

import java.util.Objects;

public class MemberDtoSample {
    private String mem_id;
    private Long own_cp_id;
    private String gd_name;
    private String mem_name;
    private String mem_email;
    private String mem_phone;

    public MemberDtoSample(){}
    public MemberDtoSample(String mem_id, Long own_cp_id, String gd_name, String mem_name, String mem_email, String mem_phone) {
        this.mem_id = mem_id;
        this.own_cp_id = own_cp_id;
        this.gd_name = gd_name;
        this.mem_name = mem_name;
        this.mem_email = mem_email;
        this.mem_phone = mem_phone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MemberDtoSample that = (MemberDtoSample) o;
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
