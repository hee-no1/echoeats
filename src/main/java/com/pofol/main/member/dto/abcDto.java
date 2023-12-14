package com.pofol.main.member.dto;

import lombok.Data;

@Data
public class abcDto {
    private String a;
    private String b;
    private String c;

    public abcDto() {
    }

    public abcDto(String a, String b, String c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

}
