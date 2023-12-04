package com.pofol.sample;

public class ProductSmpl {
	private Long id;
	private String name;
	private int price;
	private int quantity;
	
	public ProductSmpl() {}
	public ProductSmpl(Long id, String name, int price, int quantity){
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity =quantity;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getsubPriceQty() {
		return price*quantity;
	}
}
