package com.testsystem.defect.dao;

import java.util.List;

import com.testsystem.defect.vo.DefCase;

public interface CaseDao {
	public  List GetCase();
	
	public List  GetCaseByProjectId(int  projectid);
	
	public  int  AddDefectCase(DefCase defCase);
	
	public int CreateCase(String sql);
	
	public void AddDefectCaseBody(String stepall, String resultall, int caseid,int corder);
	
	public List<DefCase> GetCaseByCaseId(int caseid);
	
	public  List  GetCaseIndexByCaseId(int caseid);
	
	public List   GetCaseBodyByCaseId(int caseid);
	
	
	public void  DelCaseIndex(int caseid);
	
	public  void  DelCaseBody(int caseid);
	
	
	public  List GetCaseSearchCondition(int paramInt);
	
}
