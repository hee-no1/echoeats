package com.pofol.main.orders1.order.domain;

import java.util.Date;
import java.util.Objects;

import lombok.Data;

//@Data = (@Getter, @Setter, @RequiredArgsConstructor, 
//			@ToString, @EqualsAndHashCode)
@Data
//@NoArgsConstructor
public class OrderDto {
	private Long ord_id;
    private String mem_id;
    private Date ord_date;
    private String tot_prod_name;
    private Integer tot_prod_price;
    private Integer tot_pay_price;
    private Integer tot_prod_disc;
    private Integer dlvy_fee;
    private Integer tot_ord_qty;
    private String pay_way;
    private Integer ord_ing;
    private Integer ord_cmplt;
    private Integer ord_fail;
    private Integer prod_ing;
    private Integer dlvy_prep_ing;
    private Integer dlvy_ing;
    private Integer dlvy_cmplt;
    private Integer ord_cxl;
    private Integer ord_ex;
    private Integer ord_rfnd;
    private Date rg_date;
    private String rg_num;
    private Date md_date;
    private String md_num;

    public OrderDto() {
    	this.dlvy_fee = 0;
    	
    	this.ord_ing = 0;
    	this.ord_cmplt = 0;
        this.ord_fail = 0;
        this.prod_ing = 0;
        this.dlvy_prep_ing = 0;
        this.dlvy_ing = 0;
        this.dlvy_cmplt = 0;
        this.ord_cxl = 0;
        this.ord_ex = 0;
        this.ord_rfnd = 0;
    }

	public OrderDto(String mem_id, String tot_prod_name, Integer tot_prod_price, Integer tot_pay_price,
					Integer tot_prod_disc, Integer dlvy_fee, Integer tot_ord_qty, String pay_way, String rg_num) {
		this.mem_id = mem_id;
		this.tot_prod_name = tot_prod_name;
		this.tot_prod_price = tot_prod_price;
		this.tot_pay_price = tot_pay_price;
		this.tot_prod_disc = tot_prod_disc;
		this.tot_ord_qty = tot_ord_qty;
		this.pay_way = pay_way;
		
		this.rg_num = rg_num;
		this.md_num = rg_num;
		
		this.dlvy_fee = 0;
		
		this.ord_ing = 0;
		this.ord_cmplt = 0;
        this.ord_fail = 0;
        this.prod_ing = 0;
        this.dlvy_prep_ing = 0;
        this.dlvy_ing = 0;
        this.dlvy_cmplt = 0;
        this.ord_cxl = 0;
        this.ord_ex = 0;
        this.ord_rfnd = 0;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderDto other = (OrderDto) obj;
		return Objects.equals(dlvy_cmplt, other.dlvy_cmplt) && Objects.equals(dlvy_fee, other.dlvy_fee)
				&& Objects.equals(dlvy_ing, other.dlvy_ing) && Objects.equals(dlvy_prep_ing, other.dlvy_prep_ing)
				&& Objects.equals(md_num, other.md_num) && Objects.equals(mem_id, other.mem_id)
				&& Objects.equals(ord_cmplt, other.ord_cmplt) && Objects.equals(ord_cxl, other.ord_cxl)
				&& Objects.equals(ord_ex, other.ord_ex) && Objects.equals(ord_fail, other.ord_fail)
				&& Objects.equals(ord_id, other.ord_id) && Objects.equals(ord_ing, other.ord_ing)
				&& Objects.equals(ord_rfnd, other.ord_rfnd) && Objects.equals(pay_way, other.pay_way)
				&& Objects.equals(prod_ing, other.prod_ing) && Objects.equals(rg_num, other.rg_num)
				&& Objects.equals(tot_pay_price, other.tot_pay_price)
				&& Objects.equals(tot_prod_disc, other.tot_prod_disc)
				&& Objects.equals(tot_prod_name, other.tot_prod_name)
				&& Objects.equals(tot_prod_price, other.tot_prod_price)
				&& Objects.equals(tot_ord_qty, other.tot_ord_qty);
	}

	@Override
	public int hashCode() {
		return Objects.hash(dlvy_cmplt, dlvy_fee, dlvy_ing, dlvy_prep_ing, md_num, mem_id, ord_cmplt, ord_cxl, ord_ex,
				ord_fail, ord_id, ord_ing, ord_rfnd, pay_way, prod_ing, rg_num, tot_pay_price, tot_prod_disc,
				tot_prod_name, tot_prod_price, tot_ord_qty);
	}
}