package com.pofol.main.product.domain;

import lombok.*;

import java.util.Objects;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EventGroupDto {

    private Long evt_gp_id; // 이벤트 그룹 id
    private String evt_gp_name; // 이벤트 그룹 명
    private String evt_gp_dtl; // 이벤트 그룹 설명
    private String evt_gp_std; // 이벤트 그룹 기준

}
