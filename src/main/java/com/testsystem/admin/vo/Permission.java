package com.testsystem.admin.vo;

public class Permission {
	
	int permissionid;
	Integer pid;
	String name;
	int type;
	Integer sort;
	String url;
	String permissioncode;
	String icon;
	int state;
	String desc;
	
	public int getPermissionid() {
		return permissionid;
	}
	public void setPermissionid(int permissionid) {
		this.permissionid = permissionid;
	}

	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getSort() {
		return sort;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPermissioncode() {
		return permissioncode;
	}
	public void setPermissioncode(String permissioncode) {
		this.permissioncode = permissioncode;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	
	
	
	
	

}
