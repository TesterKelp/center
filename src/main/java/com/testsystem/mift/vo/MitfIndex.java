package com.testsystem.mift.vo;

public class MitfIndex {

	 String casename;
	String casedesc;
	String  type;
	String header;
	int Interfaceid;
	int userid ;
	
	
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getCasename() {
		return casename;
	}
	public void setCasename(String casename) {
		this.casename = casename;
	}
	public String getCasedesc() {
		return casedesc;
	}
	public void setCasedesc(String casedesc) {
		this.casedesc = casedesc;
	}

	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public int getInterfaceid() {
		return Interfaceid;
	}
	public void setInterfaceid(int interfaceid) {
		Interfaceid = interfaceid;
	}
	
	
	
}
