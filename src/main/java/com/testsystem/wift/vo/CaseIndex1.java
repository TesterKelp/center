package com.testsystem.wift.vo;

public class CaseIndex1
{
  String casename;
  String casedesc;
  String type;
  String header;
  int Interfaceid;
  int projectid;
  int moduleid;
  int userid;
  String directories;

  public int getProjectid()
  {
    return this.projectid; }

  public void setProjectid(int projectid) {
    this.projectid = projectid; }

  public int getModuleid() {
    return this.moduleid; }

  public void setModuleid(int moduleid) {
    this.moduleid = moduleid; }

  public String getDirectories() {
    return this.directories; }

  public void setDirectories(String directories) {
    this.directories = directories; }

  public String getType() {
    return this.type; }

  public void setType(String type) {
    this.type = type; }

  public int getUserid() {
    return this.userid; }

  public void setUserid(int userid) {
    this.userid = userid; }

  public String getCasename() {
    return this.casename; }

  public void setCasename(String casename) {
    this.casename = casename; }

  public String getCasedesc() {
    return this.casedesc; }

  public void setCasedesc(String casedesc) {
    this.casedesc = casedesc;
  }

  public String getHeader() {
    return this.header; }

  public void setHeader(String header) {
    this.header = header; }

  public int getInterfaceid() {
    return this.Interfaceid; }

  public void setInterfaceid(int interfaceid) {
    this.Interfaceid = interfaceid;
  }
}
