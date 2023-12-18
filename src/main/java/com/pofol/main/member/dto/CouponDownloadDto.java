package com.pofol.main.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CouponDownloadDto {
    private Long dw_id;
    private Long cp_id;
    private String dw_sts;
    private int cp_qty;
    private Date dw_date;
    private Date cp_del_date;
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;

    private CouponDto CouponDto;



}
