package com.testsystem.wift.vo;

public class InterfaceIndex
{
  int interfaceid;
  String interfacename;
  String interfacedesc;
  int projectid;
  int moduleid;
  int userid;
  String createtime;
  String requesttype;
  String directories;
  int environmentid;

  public int getEnvironmentid()
  {
    return this.environmentid; }

  public void setEnvironmentid(int environmentid) {
    this.environmentid = environmentid; }

  public String getDirectories() {
    return this.directories; }

  public void setDirectories(String directories) {
    this.directories = directories; }

  public String getRequesttype() {
    return this.requesttype; }

  public void setRequesttype(String requesttype) {
    this.requesttype = requesttype; }

  public int getInterfaceid() {
    return this.interfaceid; }

  public void setInterfaceid(int interfaceid) {
    this.interfaceid = interfaceid; }

  public String getInterfacename() {
    return this.interfacename; }

  public void setInterfacename(String interfacename) {
    this.interfacename = interfacename; }

  public String getInterfacedesc() {
    return this.interfacedesc; }

  public void setInterfacedesc(String interfacedesc) {
    this.interfacedesc = interfacedesc; }

  public int getProjectid() {
    return this.projectid; }

  public void setProjectid(int projectid) {
    this.projectid = projectid; }

  public int getModuleid() {
    return this.moduleid; }

  public void setModuleid(int moduleid) {
    this.moduleid = moduleid; }

  public int getUserid() {
    return this.userid; }

  public void setUserid(int userid) {
    this.userid = userid; }

  public String getCreatetime() {
    return this.createtime; }

  public void setCreatetime(String createtime) {
    this.createtime = createtime;
  }
}
