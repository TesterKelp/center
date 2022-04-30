package com.testsystem.wift.vo;

public class CaseAssertion {
	
	
	int interface_case_id ;
	int Assertion_type;
	String Assertion_content;
	String Expected_Result;
	String Assertion_Desc ;

	
	
	
	public String getAssertion_Desc() {
		return Assertion_Desc;
	}

	public void setAssertion_Desc(String assertion_Desc) {
		Assertion_Desc = assertion_Desc;
	}

	public int getInterface_case_id() {
		return interface_case_id;
	}

	public void setInterface_case_id(int interface_case_id) {
		this.interface_case_id = interface_case_id;
	}

	public int getAssertion_type() {
		return Assertion_type;
	}

	public void setAssertion_type(int assertion_type) {
		Assertion_type = assertion_type;
	}

	public String getAssertion_content() {
		return Assertion_content;
	}

	public void setAssertion_content(String assertion_content) {
		Assertion_content = assertion_content;
	}

	public String getExpected_Result() {
		return Expected_Result;
	}

	public void setExpected_Result(String expected_Result) {
		Expected_Result = expected_Result;
	}
	
	
	
	
	
	
	
	

}
