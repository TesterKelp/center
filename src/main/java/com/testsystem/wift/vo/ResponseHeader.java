package com.testsystem.wift.vo;

public class ResponseHeader
{
  int ParameterId;
  int InterfaceId;
  String ResponseHeaderParameterName;
  int ResponseHeaderParameterRequired;
  String ResponseHeaderParameterDescription;
  int ResponseHeaderParameterSort;

  public int getParameterId()
  {
    return this.ParameterId; }

  public void setParameterId(int parameterId) {
    this.ParameterId = parameterId; }

  public int getInterfaceId() {
    return this.InterfaceId; }

  public void setInterfaceId(int interfaceId) {
    this.InterfaceId = interfaceId; }

  public String getResponseHeaderParameterName() {
    return this.ResponseHeaderParameterName; }

  public void setResponseHeaderParameterName(String responseHeaderParameterName) {
    this.ResponseHeaderParameterName = responseHeaderParameterName; }

  public int getResponseHeaderParameterRequired() {
    return this.ResponseHeaderParameterRequired; }

  public void setResponseHeaderParameterRequired(int responseHeaderParameterRequired) {
    this.ResponseHeaderParameterRequired = responseHeaderParameterRequired; }

  public String getResponseHeaderParameterDescription() {
    return this.ResponseHeaderParameterDescription; }

  public void setResponseHeaderParameterDescription(String responseHeaderParameterDescription) {
    this.ResponseHeaderParameterDescription = responseHeaderParameterDescription; }

  public int getResponseHeaderParameterSort() {
    return this.ResponseHeaderParameterSort; }

  public void setResponseHeaderParameterSort(int responseHeaderParameterSort) {
    this.ResponseHeaderParameterSort = responseHeaderParameterSort;
  }
}
