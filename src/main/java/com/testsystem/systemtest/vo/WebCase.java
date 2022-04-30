package com.testsystem.systemtest.vo;
public class WebCase {
	
	
	
	int caseid ;
	String casename ;
	String casedesc ;
	String moduleid ;
	int status ;
	int userid ;
	int projectid ;
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public int getCaseid() {
		return caseid;
	}
	public void setCaseid(int caseid) {
		this.caseid = caseid;
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
	public String getModuleid() {
		return moduleid;
	}
	public void setModuleid(String moduleid) {
		this.moduleid = moduleid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	

}
