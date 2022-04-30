package com.testsystem.defect.vo;

public class Scheme {
	int schemeId;
	  int schemeType;
	  int schemeCreateUserId;
	  String schemeName;
	  String schemeCreateTime;

	  public int getSchemeId()
	  {
	    return this.schemeId;
	  }
	  public void setSchemeId(int schemeId) {
	    this.schemeId = schemeId;
	  }
	  public int getSchemeType() {
	    return this.schemeType;
	  }
	  public void setSchemeType(int schemeType) {
	    this.schemeType = schemeType;
	  }
	  public int getSchemeCreateUserId() {
	    return this.schemeCreateUserId;
	  }
	  public void setSchemeCreateUserId(int schemeCreateUserId) {
	    this.schemeCreateUserId = schemeCreateUserId;
	  }
	  public String getSchemeName() {
	    return this.schemeName;
	  }
	  public void setSchemeName(String schemeName) {
	    this.schemeName = schemeName;
	  }
	  public String getSchemeCreateTime() {
	    return this.schemeCreateTime;
	  }
	  public void setSchemeCreateTime(String schemeCreateTime) {
	    this.schemeCreateTime = schemeCreateTime;
	  }
}
