package com.pofol.main.orders.inquiry.domain;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
//@Data = (@Getter, @Setter, @RequiredArgsConstructor, 
//@ToString, @EqualsAndHashCode)
@Data
@Accessors(chain = true)
@NoArgsConstructor
public class InquiryDto {
    private Long inquiry_id;
    private String mem_id;
    private String type;
    private String det_type;
    private String title;
    private String content;
    private boolean rep_sts;
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;
    
    private MultipartFile[] imageFile;
    
    private List<InquiryPrdDto> prdList;
    private List<String> imgList;
    
    public InquiryDto(String mem_id, String type, String det_type, String title,
                   String content, String rg_num) {
        this.mem_id = mem_id;
        this.type = type;
        this.det_type = det_type;
        this.title = title;
        this.content = content;
        this.rg_num = rg_num;
        this.md_num = rg_num;
    }

}