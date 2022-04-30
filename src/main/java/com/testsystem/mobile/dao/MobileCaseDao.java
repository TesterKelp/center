package com.testsystem.mobile.dao;

import java.util.List;

import com.testsystem.mobile.vo.MobileBody;
import com.testsystem.mobile.vo.MobileCase;

public interface MobileCaseDao {
	public List GetStCaseByStatus(int status);

	public void AddStCase(MobileCase mobileCase);
	
	public   int  AddStCasea(MobileCase mobileCase);

	public List GetStCaseByProjectId(int projectid);

	public List GetStCaseByModuleId(int moduleid);

	public void AddStbody(MobileBody mobileBody);
	
	public  List GetCaseIndex(int caseid);
	public List GetCaseBody(int caseid);
	
	public  void  UpdateStCaseIndex(MobileCase mobileCase);
	
	public  void  DelStCaseBodyByCaseId(int caseid);
	public  void  DelStCaseIndexByCaseId(int caseid);
	
	public void SetCaseIsSuccessfully(int caseid,int status);
	
	public Boolean IsHaveTaskByCaseTaskAndMaxcsoloo(String maxcsolo,int tasktype);

}
