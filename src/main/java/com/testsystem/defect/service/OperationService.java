package com.testsystem.defect.service;

import java.util.List;

import com.testsystem.defect.vo.Operation;


public interface OperationService {

	
	public List GetOperationList();
	
	public List GetTaskAndCaseOperationList();
	
	public List GetOperationListByIsShow();
	
	public List GetShowOperationBySubjectType(int subjecttype) ;
	
	public String GetCustomFiledName(int subjecttype);
	
	public String GetCustomFiledName(int subjecttype,int projectid);
	
	public String  GetOperationFiledNameByOperationId(int operationid) ;
	
	public void SaveOperation(Operation operation);
	
	public void SetFieldNameIsUsed(String fieldname);
	
	public void SetFieldNameIsUsed(String fieldname,int projectid);
	public boolean IsExistEngLishName(String englishname);
	
	public void DelOperation(int operationid);
	
	public boolean IsFirst(int operationid);
	
	public void SaveOperationValue(String operationvalue,int operationid);
	
	public void  UpdateOperationValue(String operationvalue,int operationid);
	
	public List GetOperationSelectValue(int operationid);
	
	public String GetOperationValue(int operationid);
	
	public void SetShowOrHidden(int operationid,int isshow);
	
	public void Setdatasource(int operationid,int datasource);
	
	public String  GetSqlStrByOperationId(int operationid) ;
	
	public void   AddOperationSqlStr(int operationid ,String sqlstr);
	
	public List GetOperationByProjectId(int projectid);
	
	
	public void  SetFieldDefatultProjectId(int projectid);
	
	public  void SetFieldProjectInit();
	
	
	public  List GetShowOperationByTask();
	
}
