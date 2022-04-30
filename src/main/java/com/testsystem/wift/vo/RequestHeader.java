package com.testsystem.wift.vo;

public class RequestHeader
{
  int ParameterId;
  int InterfaceId;
  String RequestHeaderParameterName;
  int RequestHeaderParameterRequired;
  String RequestHeaderParameterDefaultValue;
  String RequestHeaderParameterDescription;
  int RequestHeaderParameterSort;

  public int getParameterId()
  {
    return this.ParameterId; }

  public void setParameterId(int parameterId) {
    this.ParameterId = parameterId; }

  public int getInterfaceId() {
    return this.InterfaceId; }

  public void setInterfaceId(int interfaceId) {
    this.InterfaceId = interfaceId; }

  public String getRequestHeaderParameterName() {
    return this.RequestHeaderParameterName; }

  public void setRequestHeaderParameterName(String requestHeaderParameterName) {
    this.RequestHeaderParameterName = requestHeaderParameterName; }

  public int getRequestHeaderParameterRequired() {
    return this.RequestHeaderParameterRequired; }

  public void setRequestHeaderParameterRequired(int requestHeaderParameterRequired) {
    this.RequestHeaderParameterRequired = requestHeaderParameterRequired; }

  public String getRequestHeaderParameterDefaultValue() {
    return this.RequestHeaderParameterDefaultValue; }

  public void setRequestHeaderParameterDefaultValue(String requestHeaderParameterDefaultValue) {
    this.RequestHeaderParameterDefaultValue = requestHeaderParameterDefaultValue; }

  public String getRequestHeaderParameterDescription() {
    return this.RequestHeaderParameterDescription; }

  public void setRequestHeaderParameterDescription(String requestHeaderParameterDescription) {
    this.RequestHeaderParameterDescription = requestHeaderParameterDescription; }

  public int getRequestHeaderParameterSort() {
    return this.RequestHeaderParameterSort; }

  public void setRequestHeaderParameterSort(int requestHeaderParameterSort) {
    this.RequestHeaderParameterSort = requestHeaderParameterSort;
  }
}
