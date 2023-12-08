package com.pofol.main.orders.order.domain;

import com.pofol.main.orders.sample.cartDataSample.SelectedItemsDto;
import com.pofol.main.orders.sample.memberSample.SampleMemberDto;
import com.pofol.main.orders.sample.productSample.SampleProductDto;
import lombok.Data;
import lombok.Getter;

import java.util.List;
import java.util.Objects;

@Getter
public class OrderCheckout {

    /* 장바구니를 통해 넘어온 상품정보 */
    private List<SelectedItemsDto> selectedItems;

    /* 서버 -> 주문서 */
    private String tot_prod_name; //총 상품명
    private Integer tot_prod_price; //총 주문 금액
    private Integer origin_prod_price; //총 원래 상품 금액
    private Integer dlvy_fee; //배송비
    private SampleMemberDto sampleMemberDto; //회원 정보
    //배송정보 Dto
    //배송요청사항정보 Dto
    //쿠폰 Dto
    //적립금 Dto


    /* 주문서 -> 결제 */
    private Integer tot_pay_price;

    public OrderCheckout(){}

    public OrderCheckout(List<SelectedItemsDto> selectedItems) {
        this.selectedItems = selectedItems;
    }

    public OrderCheckout(List<SelectedItemsDto> selectedItems, String tot_prod_name, Integer tot_prod_price, Integer origin_prod_price, Integer dlvy_fee, SampleMemberDto sampleMemberDto, Integer tot_pay_price) {
        this.selectedItems = selectedItems;
        this.tot_prod_name = tot_prod_name;
        this.tot_prod_price = tot_prod_price;
        this.origin_prod_price = origin_prod_price;
        this.dlvy_fee = dlvy_fee;
        this.sampleMemberDto = sampleMemberDto;
        this.tot_pay_price = tot_pay_price;
    }

    public void setSelectedItems(List<SelectedItemsDto> selectedItems) {
        this.selectedItems = selectedItems;
    }

    public void setTot_prod_name(String tot_prod_name) {
        this.tot_prod_name = tot_prod_name;
    }

    public void setTot_prod_price(Integer tot_prod_price) {
        this.tot_prod_price = tot_prod_price;
    }

    public void setOrigin_prod_price(Integer origin_prod_price) {
        this.origin_prod_price = origin_prod_price;
    }

    public void setDlvy_fee(Integer dlvy_fee) {
        this.dlvy_fee = dlvy_fee;
    }

    public void setSampleMemberDto(SampleMemberDto sampleMemberDto) {
        this.sampleMemberDto = sampleMemberDto;
    }

    public void setTot_pay_price(Integer tot_pay_price) {
        this.tot_pay_price = tot_pay_price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderCheckout that = (OrderCheckout) o;
        return Objects.equals(selectedItems, that.selectedItems) && Objects.equals(tot_prod_name, that.tot_prod_name) && Objects.equals(tot_prod_price, that.tot_prod_price) && Objects.equals(origin_prod_price, that.origin_prod_price) && Objects.equals(dlvy_fee, that.dlvy_fee) && Objects.equals(sampleMemberDto, that.sampleMemberDto) && Objects.equals(tot_pay_price, that.tot_pay_price);
    }

    @Override
    public int hashCode() {
        return Objects.hash(selectedItems, tot_prod_name, tot_prod_price, origin_prod_price, dlvy_fee, sampleMemberDto, tot_pay_price);
    }

    @Override
    public String toString() {
        return "OrderCheckout{" +
                "selectedItems=" + selectedItems +
                ", tot_prod_name='" + tot_prod_name + '\'' +
                ", tot_prod_price=" + tot_prod_price +
                ", origin_prod_price=" + origin_prod_price +
                ", dlvy_fee=" + dlvy_fee +
                ", sampleMemberDto=" + sampleMemberDto +
                ", tot_pay_price=" + tot_pay_price +
                '}';
    }
}
