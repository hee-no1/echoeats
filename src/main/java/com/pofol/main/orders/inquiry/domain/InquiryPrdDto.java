package com.pofol.main.orders.inquiry.domain;

import java.util.Date;
import java.util.Objects;

import lombok.Data;
import lombok.NoArgsConstructor;
//@Data = (@Getter, @Setter, @RequiredArgsConstructor, 
//@ToString, @EqualsAndHashCode)
@Data
@NoArgsConstructor
public class InquiryPrdDto {
    private Long inquiry_prd_id;
    private Long inquiry_id;
    private Long ord_id;
    private Long ord_det_id;
    private Date ord_date;
    private String prod_name;
    private int prod_qty;
    private int prod_tot_price;
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;

    public InquiryPrdDto(Long inquiry_id, Long ord_id, Long ord_det_id,Date ord_date,
                          String prod_name, int prod_qty, int prod_tot_price,
                          String rg_num) {
        this.inquiry_id = inquiry_id;
        this.ord_id = ord_id;
        this.ord_det_id = ord_det_id;
        this.ord_date = ord_date;
        this.prod_name = prod_name;
        this.prod_qty = prod_qty;
        this.prod_tot_price = prod_tot_price;
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
		InquiryPrdDto other = (InquiryPrdDto) obj;
		return Objects.equals(inquiry_id, other.inquiry_id) && Objects.equals(inquiry_prd_id, other.inquiry_prd_id)
				&& Objects.equals(md_num, other.md_num) && Objects.equals(ord_date, other.ord_date)
				&& Objects.equals(ord_det_id, other.ord_det_id) && Objects.equals(ord_id, other.ord_id)
				&& Objects.equals(prod_name, other.prod_name) && prod_qty == other.prod_qty
				&& prod_tot_price == other.prod_tot_price && Objects.equals(rg_num, other.rg_num);
	}

	@Override
	public int hashCode() {
		return Objects.hash(inquiry_id, inquiry_prd_id, md_num, ord_date, ord_det_id, ord_id, prod_name, prod_qty,
				prod_tot_price, rg_num);
	}
    
}