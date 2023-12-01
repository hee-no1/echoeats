package com.pofol.main.orders.sample.productSample;

import java.util.Objects;

public class RequiredProductDto {

    private Long prod_id;
    private String prod_name;
    private Integer prod_price;
    private Integer disc_price;
    private String opt_prod_id;
    private String opt_prod_name;
    private Integer opt_price;
    private Integer opt_disc_price;
    private String pack_type;
    private String dlvy_type;

    public RequiredProductDto(){}

    public RequiredProductDto(Long prod_id) {
        this.prod_id = prod_id;
    }

    public RequiredProductDto(Long prod_id, String opt_prod_id) {
        this.prod_id = prod_id;
        this.opt_prod_id = opt_prod_id;
    }

    public RequiredProductDto(Long prod_id, String prod_name, Integer prod_price, Integer disc_price, String opt_prod_id, String opt_prod_name, Integer opt_price, Integer opt_disc_price, String pack_type, String dlvy_type) {
        this.prod_id = prod_id;
        this.prod_name = prod_name;
        this.prod_price = prod_price;
        this.disc_price = disc_price;
        this.opt_prod_id = opt_prod_id;
        this.opt_prod_name = opt_prod_name;
        this.opt_price = opt_price;
        this.opt_disc_price = opt_disc_price;
        this.pack_type = pack_type;
        this.dlvy_type = dlvy_type;
    }

    public Long getProd_id() {
        return prod_id;
    }

    public void setProd_id(Long prod_id) {
        this.prod_id = prod_id;
    }

    public String getProd_name() {
        return prod_name;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    public Integer getProd_price() {
        return prod_price;
    }

    public void setProd_price(Integer prod_price) {
        this.prod_price = prod_price;
    }

    public Integer getDisc_price() {
        return disc_price;
    }

    public void setDisc_price(Integer disc_price) {
        this.disc_price = disc_price;
    }

    public String getOpt_prod_id() {
        return opt_prod_id;
    }

    public void setOpt_prod_id(String opt_prod_id) {
        this.opt_prod_id = opt_prod_id;
    }

    public String getOpt_prod_name() {
        return opt_prod_name;
    }

    public void setOpt_prod_name(String opt_prod_name) {
        this.opt_prod_name = opt_prod_name;
    }

    public Integer getOpt_price() {
        return opt_price;
    }

    public void setOpt_price(Integer opt_price) {
        this.opt_price = opt_price;
    }

    public Integer getOpt_disc_price() {
        return opt_disc_price;
    }

    public void setOpt_disc_price(Integer opt_disc_price) {
        this.opt_disc_price = opt_disc_price;
    }

    public String getPack_type() {
        return pack_type;
    }

    public void setPack_type(String pack_type) {
        this.pack_type = pack_type;
    }

    public String getDlvy_type() {
        return dlvy_type;
    }

    public void setDlvy_type(String dlvy_type) {
        this.dlvy_type = dlvy_type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RequiredProductDto that = (RequiredProductDto) o;
        return Objects.equals(prod_id, that.prod_id) && Objects.equals(prod_name, that.prod_name) && Objects.equals(prod_price, that.prod_price) && Objects.equals(disc_price, that.disc_price) && Objects.equals(opt_prod_id, that.opt_prod_id) && Objects.equals(opt_prod_name, that.opt_prod_name) && Objects.equals(opt_price, that.opt_price) && Objects.equals(opt_disc_price, that.opt_disc_price) && Objects.equals(pack_type, that.pack_type) && Objects.equals(dlvy_type, that.dlvy_type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(prod_id, prod_name, prod_price, disc_price, opt_prod_id, opt_prod_name, opt_price, opt_disc_price, pack_type, dlvy_type);
    }

    @Override
    public String toString() {
        return "RequiredProductDto{" +
                "prod_id=" + prod_id +
                ", prod_name='" + prod_name + '\'' +
                ", prod_price=" + prod_price +
                ", disc_price=" + disc_price +
                ", opt_prod_id='" + opt_prod_id + '\'' +
                ", opt_prod_name='" + opt_prod_name + '\'' +
                ", opt_price=" + opt_price +
                ", opt_disc_price=" + opt_disc_price +
                ", pack_type='" + pack_type + '\'' +
                ", dlvy_type='" + dlvy_type + '\'' +
                '}';
    }
}
