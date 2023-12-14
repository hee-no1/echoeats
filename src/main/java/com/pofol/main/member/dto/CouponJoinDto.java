package com.pofol.main.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CouponJoinDto {
    private String mem_id;
    private Long cp_id;
    private int cp_qty;
    private String cp_sts;
    private String cp_del_date;
    private String cp_name;
    private int cash_rate;
    private int min_amt;
    private int max_disc_amt;
    private String type;

}
