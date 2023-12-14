package com.pofol.main.orders.order.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CodeTableDto {
	private String code_name;
	private String column_sts;
	private Integer code_type;
	private String code_dec;
}
