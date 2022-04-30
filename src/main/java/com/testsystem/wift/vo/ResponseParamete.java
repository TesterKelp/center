package com.testsystem.wift.vo;

public class ResponseParamete
{
  int ParameterId;
  int InterfaceId;
  String ResponseParameterName;
  int ResponseParameterType;
  int ResponseParameterRequired;
  String ResponseParameterDescription;
  int ResponseParameterSort;

  public int getResponseParameterRequired()
  {
    return this.ResponseParameterRequired; }

  public void setResponseParameterRequired(int responseParameterRequired) {
    this.ResponseParameterRequired = responseParameterRequired; }

  public int getParameterId() {
    return this.ParameterId; }

  public void setParameterId(int parameterId) {
    this.ParameterId = parameterId; }

  public int getInterfaceId() {
    return this.InterfaceId; }

  public void setInterfaceId(int interfaceId) {
    this.InterfaceId = interfaceId; }

  public String getResponseParameterName() {
    return this.ResponseParameterName; }

  public void setResponseParameterName(String responseParameterName) {
    this.ResponseParameterName = responseParameterName; }

  public int getResponseParameterType() {
    return this.ResponseParameterType; }

  public void setResponseParameterType(int responseParameterType) {
    this.ResponseParameterType = responseParameterType;
  }

  public String getResponseParameterDescription() {
    return this.ResponseParameterDescription; }

  public void setResponseParameterDescription(String responseParameterDescription) {
    this.ResponseParameterDescription = responseParameterDescription; }

  public int getResponseParameterSort() {
    return this.ResponseParameterSort; }

  public void setResponseParameterSort(int responseParameterSort) {
    this.ResponseParameterSort = responseParameterSort;
  }
}
