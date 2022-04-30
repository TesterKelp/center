package com.testsystem.wift.vo;

public class CaseIndex
{
  int interface_case_id;
  String interface_case_name;
  String interface_case_desc;
  String Createtime ;
  int interfaceid;
  int userid;
  int casestatus;
  int serverid;

  
  
  
  
  public String getCreatetime() {
	return Createtime;
}

public void setCreatetime(String createtime) {
	Createtime = createtime;
}

public int getInterface_case_id()
  {
    return this.interface_case_id; }

  public void setInterface_case_id(int interface_case_id) {
    this.interface_case_id = interface_case_id; }

  public String getInterface_case_name() {
    return this.interface_case_name; }

  public void setInterface_case_name(String interface_case_name) {
    this.interface_case_name = interface_case_name; }

  public String getInterface_case_desc() {
    return this.interface_case_desc; }

  public void setInterface_case_desc(String interface_case_desc) {
    this.interface_case_desc = interface_case_desc; }

  public int getInterfaceid() {
    return this.interfaceid; }

  public void setInterfaceid(int interfaceid) {
    this.interfaceid = interfaceid; }

  public int getUserid() {
    return this.userid; }

  public void setUserid(int userid) {
    this.userid = userid; }

  public int getCasestatus() {
    return this.casestatus; }

  public void setCasestatus(int casestatus) {
    this.casestatus = casestatus; }

  public int getServerid() {
    return this.serverid; }

  public void setServerid(int serverid) {
    this.serverid = serverid;
  }
}
