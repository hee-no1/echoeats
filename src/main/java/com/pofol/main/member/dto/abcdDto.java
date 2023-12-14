package com.pofol.main.member.dto;

import lombok.Data;

@Data
public class abcdDto {
    private abcDto abcDto;
    private String d;

    public abcdDto() {
    }

    public abcdDto(com.pofol.main.member.dto.abcDto abcDto, String d) {
        this.abcDto = abcDto;
        this.d = d;
    }
}
