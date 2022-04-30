package com.testsystem.wift.vo;

public class CaseRequest
{
  int interface_case_id;
  String dataname;
  String datavalue;
  int datasort;

  public int getInterface_case_id()
  {
    return this.interface_case_id; }

  public void setInterface_case_id(int interface_case_id) {
    this.interface_case_id = interface_case_id; }

  public String getDataname() {
    return this.dataname; }

  public void setDataname(String dataname) {
    this.dataname = dataname; }

  public String getDatavalue() {
    return this.datavalue; }

  public void setDatavalue(String datavalue) {
    this.datavalue = datavalue; }

  public int getDatasort() {
    return this.datasort; }

  public void setDatasort(int datasort) {
    this.datasort = datasort;
  }
}
