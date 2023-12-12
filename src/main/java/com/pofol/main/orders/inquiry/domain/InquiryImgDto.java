package com.pofol.main.orders.inquiry.domain;

import java.util.Date;
import java.util.Objects;

import lombok.Data;
import lombok.NoArgsConstructor;
//@Data = (@Getter, @Setter, @RequiredArgsConstructor, 
//@ToString, @EqualsAndHashCode)
@Data
@NoArgsConstructor
public class InquiryImgDto {
    private Long inquiry_img_id;
    private Long inquiry_id;
    private String file_name;
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;

    public InquiryImgDto(Long inquiry_id, String file_name,
                        String rg_num) {
        this.inquiry_id = inquiry_id;
        this.file_name = file_name;
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
		InquiryImgDto other = (InquiryImgDto) obj;
		return Objects.equals(file_name, other.file_name) && Objects.equals(inquiry_id, other.inquiry_id)
				&& Objects.equals(inquiry_img_id, other.inquiry_img_id) && Objects.equals(md_num, other.md_num)
				&& Objects.equals(rg_num, other.rg_num);
	}
	@Override
	public int hashCode() {
		return Objects.hash(file_name, inquiry_id, inquiry_img_id, md_num, rg_num);
	}
}