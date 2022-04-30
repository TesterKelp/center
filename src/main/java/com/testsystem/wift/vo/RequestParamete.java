package com.testsystem.wift.vo;

public class RequestParamete
{
  int ParameterId;
  int InterfaceId;
  String RquestParameterName;
  String RquestParameterDefaultValue;
  int RquestParameterType;
  int RquestParameterRequired;
  String RquestParameterDescription;
  int RquestParameterSort;

  public int getParameterId()
  {
    return this.ParameterId; }

  public void setParameterId(int parameterId) {
    this.ParameterId = parameterId; }

  public int getInterfaceId() {
    return this.InterfaceId; }

  public void setInterfaceId(int interfaceId) {
    this.InterfaceId = interfaceId; }

  public String getRquestParameterName() {
    return this.RquestParameterName; }

  public void setRquestParameterName(String rquestParameterName) {
    this.RquestParameterName = rquestParameterName; }

  public String getRquestParameterDefaultValue() {
    return this.RquestParameterDefaultValue; }

  public void setRquestParameterDefaultValue(String rquestParameterDefaultValue) {
    this.RquestParameterDefaultValue = rquestParameterDefaultValue; }

  public int getRquestParameterType() {
    return this.RquestParameterType; }

  public void setRquestParameterType(int rquestParameterType) {
    this.RquestParameterType = rquestParameterType; }

  public int getRquestParameterRequired() {
    return this.RquestParameterRequired; }

  public void setRquestParameterRequired(int rquestParameterRequired) {
    this.RquestParameterRequired = rquestParameterRequired; }

  public String getRquestParameterDescription() {
    return this.RquestParameterDescription; }

  public void setRquestParameterDescription(String rquestParameterDescription) {
    this.RquestParameterDescription = rquestParameterDescription; }

  public int getRquestParameterSort() {
    return this.RquestParameterSort; }

  public void setRquestParameterSort(int rquestParameterSort) {
    this.RquestParameterSort = rquestParameterSort;
  }
}
