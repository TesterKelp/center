package com.testsystem.systemtest.dao;

import java.util.List;

import com.testsystem.systemtest.vo.WebBody;
import com.testsystem.systemtest.vo.WebCase;

public interface WebCaseDao {
	public List GetStCaseByStatus(int status);

	public void AddStCase(WebCase webCase);
	
	public   int  AddStCasea(WebCase webCase);

	public List GetStCaseByProjectId(int projectid);

	public List GetStCaseByModuleId(int moduleid);

	public void AddStbody(WebBody webBody);
	
	public  List GetCaseIndex(int caseid);
	public List GetCaseBody(int caseid);
	
	public  void  UpdateStCaseIndex(WebCase webCase);
	
	public  void  DelStCaseBodyByCaseId(int caseid);
	public  void  DelStCaseIndexByCaseId(int caseid);
	
	public void SetCaseIsSuccessfully(int caseid,int status);
	
	public Boolean IsHaveTaskByCaseTaskAndMaxcsoloo(String maxcsolo,int tasktype);

}
