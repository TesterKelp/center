package com.testsystem.wift.service;

import java.util.List;

import com.testsystem.wift.vo.CaseAssertion;
import com.testsystem.wift.vo.CaseBody;
import com.testsystem.wift.vo.CaseHeaderAssertion;
import com.testsystem.wift.vo.CaseIndex;
import com.testsystem.wift.vo.CaseIndex1;
import com.testsystem.wift.vo.CaseRequest;
import com.testsystem.wift.vo.CaseRequestHeader;

public interface IfCaseService {

	
	public  List GetIfCaseAll();
	public int  SaveCaseIndex(CaseIndex1 caseindex );
	public void SaveCaseBody(CaseBody casebody);
	public List GetCaseIndexByCaseId(int caseid);
	public List GetCaseBodyByCaseId(int caseid);
	public List GetCaseAssertionByCaseId(int caseid);
	public List GetCaseHeaderAssertionByCaseId(int caseId);
	
	  public  void SaveJson(int paramInt, String paramString);

	  public  String GetJson(int paramInt);

	  public  int DelInterfaceTestCaseById(int paramInt);

	  public  int CreateCaseIndex(CaseIndex paramCaseIndex);

	  public  void CreateCaseRequest(CaseRequest paramCaseRequest);

	  public  void CreateCaseRequestHeader(CaseRequestHeader paramCaseRequestHeader);

	  public  void CreateCaseAssertion(CaseAssertion caseAssertion);
	  
	  public  void  CreateCaseAssertionHeader(CaseHeaderAssertion caseHeaderAssertion);
	  
	  
	  public  List GetCaseIndex(int paramInt);

	  public  List GetCaseRequest(int paramInt);

	  public  List GetCaseRequestHeader(int paramInt);
	
	  public  List GetCaseStandardList() ;
	  
	  
	  
	  
	  public  List  GetCaseByProjectId(int projectid);
	  
	  public  List  GetCaseByModuleId(int  moduleid);
	  
	  public  List  GetCaseByInterfaceId(int interfaceid);
	  
	  
	  
	  
	
}
