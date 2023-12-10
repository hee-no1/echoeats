package com.pofol.main.orders.inquiry.domain;

import java.util.Date;
import java.util.List;
import java.util.Objects;

import com.pofol.main.product.domain.ProductDto;

import lombok.Data;
import lombok.NoArgsConstructor;
//@Data = (@Getter, @Setter, @RequiredArgsConstructor, 
//@ToString, @EqualsAndHashCode)
@Data
@NoArgsConstructor
public class InquiryDto {
    private Long inquiry_id;
    private String mem_id;
    private String type;
    private String det_type;
    private String title;
    private String content;
    private boolean is_rep;
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;
    
    private List<ProductDto> prdList;
    private List<InquiryImgDto> inqList;
    
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

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		InquiryDto other = (InquiryDto) obj;
		return Objects.equals(content, other.content) && Objects.equals(det_type, other.det_type)
				&& Objects.equals(inqList, other.inqList) && Objects.equals(inquiry_id, other.inquiry_id)
				&& is_rep == other.is_rep && Objects.equals(md_date, other.md_date)
				&& Objects.equals(md_num, other.md_num) && Objects.equals(mem_id, other.mem_id)
				&& Objects.equals(prdList, other.prdList) && Objects.equals(rg_date, other.rg_date)
				&& Objects.equals(rg_num, other.rg_num) && Objects.equals(title, other.title)
				&& Objects.equals(type, other.type);
	}

	@Override
	public int hashCode() {
		return Objects.hash(content, det_type, inqList, inquiry_id, is_rep, md_date, md_num, mem_id, prdList, rg_date,
				rg_num, title, type);
	}
}