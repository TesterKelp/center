package com.testsystem.defect.service;

import java.util.List;

import com.testsystem.defect.vo.DefCase;

public interface CaseService {
	
	public  List GetCase();
public List  GetCaseByProjectId(int  projectid);
	
	public  void  AddDefectCaseBody(String stepall[]  ,String resultall[],int caseid);
	
	
	public  int  AddDefectCase(DefCase defCase);
	
	public int CreateCase(String sql);
	
	public DefCase GetCaseByCaseId(int caseid);
	
	public  List  GetCaseIndexByCaseId(int caseid);
	
	public List   GetCaseBodyByCaseId(int caseid);
	
	public  void  DelCase(int caseid);
	
	public  List GetCaseSearchCondition();
	
}
