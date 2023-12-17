package com.pofol.main.orders.delivery.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class DeliveryDto {
    private Long waybill_num;
    private Long ord_det_id;
    private String mem_id;
    private String dlvy_sts;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dlvy_start_date;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dlvy_cmply_date;
    private String dlvy_attr;
    private String pack_type;
    private String rg_num;
    private String md_num;

    //dto -> 뷰


}
