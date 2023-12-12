package com.pofol.main.member.dto;

public class AddressDto {
    private int addr_id;
    private String addr;
    private String dtl_addr;
    private String name;
    private String phone;
    private String type;
    private String def_addr;
    private String rg_date;
    private int rg_num;
    private String md_date;
    private int md_num;
    private String mem_id;

    public AddressDto(){};
    public AddressDto(String addr, String dtl_addr){
        this.addr = addr;
        this.dtl_addr = dtl_addr;
    }
    public AddressDto(String mem_id, String addr, String dtl_addr, String def_addr){
        this.addr = addr;
        this.dtl_addr = dtl_addr;
        this.mem_id = mem_id;
        this.def_addr = def_addr;
    }
    public AddressDto(int addr_id, String addr, String dtl_addr, String name, String phone, String type, String def_addr) {
        this.addr_id = addr_id;
        this.addr = addr;
        this.dtl_addr = dtl_addr;
        this.name = name;
        this.phone = phone;
        this.type = type;
        this.def_addr = def_addr;
    }

    @Override
    public String toString() {
        return "AddressDto{" +
                "addr_id=" + addr_id +
                ", addr='" + addr + '\'' +
                ", dtl_addr='" + dtl_addr + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", type='" + type + '\'' +
                ", def_addr=" + def_addr +
                ", rg_date='" + rg_date + '\'' +
                ", rg_num=" + rg_num +
                ", md_date='" + md_date + '\'' +
                ", md_num=" + md_num +
                ", mem_id='" + mem_id + '\'' +
                '}';
    }

    public int getAddr_id() {
        return addr_id;
    }

    public void setAddr_id(int addr_id) {
        this.addr_id = addr_id;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getDtl_addr() {
        return dtl_addr;
    }

    public void setDtl_addr(String dtl_addr) {
        this.dtl_addr = dtl_addr;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDef_addr() {
        return def_addr;
    }

    public void setDef_addr(String def_addr) {
        this.def_addr = def_addr;
    }

    public String getRg_date() {
        return rg_date;
    }

    public void setRg_date(String rg_date) {
        this.rg_date = rg_date;
    }

    public int getRg_num() {
        return rg_num;
    }

    public void setRg_num(int rg_num) {
        this.rg_num = rg_num;
    }

    public String getMd_date() {
        return md_date;
    }

    public void setMd_date(String md_date) {
        this.md_date = md_date;
    }

    public int getMd_num() {
        return md_num;
    }

    public void setMd_num(int md_num) {
        this.md_num = md_num;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }
}
