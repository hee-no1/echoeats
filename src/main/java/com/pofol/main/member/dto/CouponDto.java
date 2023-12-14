package com.pofol.main.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CouponDto {
        private Long cp_id;   //PK, AUTO_INCREMENT
        private String cp_name;  //쿠폰 이름
        private String cp_content;  //쿠폰 내용
        private int cash_rate;  //할인 금액
        private int min_amt;  //최소 주문 금액
        private int max_disc_amt;  //최대 할인 금액
        private String type;
        private Date rg_date;
        private String rg_num;
        private Date md_date;
        private String md_num;

}
