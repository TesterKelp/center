package com.testsystem.admin.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Userinfo implements Serializable{
	
	int userid ;
	String username="a" ;
	String password;
	String useravatar ;
	String useremail ;
	String realname ;
	String englishname ;
	String dept ;
	String telephone ;
	String qq ;
	String jobname ;
	String bg ;
	int enabled ;
	int normal;
	
	String salt ;
	
	
	
	
	public String getBg() {
		return bg;
	}
	public void setBg(String bg) {
		this.bg = bg;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public int getNormal() {
		return normal;
	}
	public void setNormal(int normal) {
		this.normal = normal;
	}
	List list = new ArrayList();
	
	String groupname ;
	int  groupid ;
	
	

	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUseravatar() {
		return useravatar;
	}
	public void setUseravatar(String useravatar) {
		this.useravatar = useravatar;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getEnglishname() {
		return englishname;
	}
	public void setEnglishname(String englishname) {
		this.englishname = englishname;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getJobname() {
		return jobname;
	}
	public void setJobname(String jobname) {
		this.jobname = jobname;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	
	
	

}
