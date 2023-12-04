package com.pofol.sample;

public class MemberSmpl {
	//회원정보
	private String id;
	private String name;
	private String ph;
	private String email;
	//배송정보 ( 배송지, 배송요청사항)
	private String dlvyAddr;
	private String dlvyRep;
	//결제할인정보(쿠폰, 적립급, (카드혜택))
	
	public MemberSmpl(){}
	public MemberSmpl(String id, String name, String ph, String email, String dlvyAddr, String dlvyRep){
		this.id=id;
		this.name = name;
		this.ph = ph;
		this.email =email;
		this.dlvyAddr=dlvyAddr;
		this.dlvyRep=dlvyRep;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPh() {
		return ph;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDlvyAddr() {
		return dlvyAddr;
	}
	public void setDlvyAddr(String dlvyAddr) {
		this.dlvyAddr = dlvyAddr;
	}
	public String getDlvyRep() {
		return dlvyRep;
	}
	public void setDlvyRep(String dlvyRep) {
		this.dlvyRep = dlvyRep;
	}
	
}
