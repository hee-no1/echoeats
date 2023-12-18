package com.pofol.main.orders.delivery.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DeliveryDetailDto {
    private Long ord_det_id; //주문상세id, 상품주문번호
    private Long waybill_num; //운송장번호
    private String mem_id; //회원id
    private String dlvy_sts; //배송상태
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dlvy_start_date; //배송시작일
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dlvy_cmplt_date; //배송완료일
    private String dlvy_attr; //배송속성
    private String pack_type; //포장타입
    private String rg_num;
    private String md_num;

    // dto -> 뷰
    private Long ord_id; //주문번호
    private String mem_name; //주문자
    private String prod_name; //상품명

    public DeliveryDetailDto(Long ord_det_id, Long waybill_num, String mem_id, String dlvy_sts, String pack_type) {
        this.ord_det_id = ord_det_id;
        this.waybill_num = waybill_num;
        this.mem_id = mem_id;
        this.dlvy_sts = dlvy_sts;
        this.pack_type = pack_type;
        this.rg_num = mem_id;
        this.md_num = mem_id;
    }
}
