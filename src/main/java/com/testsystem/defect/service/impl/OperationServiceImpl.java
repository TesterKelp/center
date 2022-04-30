/**
 * 
 */
package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.OperationDao;
import com.testsystem.defect.service.OperationService;
import com.testsystem.defect.vo.Operation;

/**
 * @author bage
 *
 */
@Service
public class OperationServiceImpl implements OperationService {
	
	
	@Autowired
	private OperationDao Operationdao ;

	public List GetOperationList() {
		// TODO Auto-generated method stub
		return Operationdao.GetOperationList() ;
	}

	public String GetCustomFiledName(int subjecttype) {
		// TODO Auto-generated method stub
		return Operationdao.GetCustomFiledName(subjecttype);
	}

	public void SaveOperation(Operation operation) {
		// TODO Auto-generated method stub
		Operationdao.SaveOperation(operation);
	}

	public void SetFieldNameIsUsed(String fieldname) {
		// TODO Auto-generated method stub
		Operationdao.SetFieldNameIsUsed(fieldname);
	}

	public boolean IsExistEngLishName(String englishname) {
		// TODO Auto-generated method stub
		return Operationdao.IsExistEngLishName(englishname);
	}

	public void DelOperation(int operationid) {
		// TODO Auto-generated method stub
		Operationdao.DelOperation(operationid);
	}

	public boolean IsFirst(int operationid) {
		// TODO Auto-generated method stub
		return Operationdao.IsFirst(operationid);
	}

	public void SaveOperationValue(String operationvalue, int operationid) {
		// TODO Auto-generated method stub
		Operationdao.SaveOperationValue(operationvalue, operationid);
	}

	public void UpdateOperationValue(String operationvalue, int operationid) {
		// TODO Auto-generated method stub
		Operationdao.UpdateOperationValue(operationvalue, operationid);
	}

	public List GetOperationSelectValue(int operationid) {
		// TODO Auto-generated method stub
		return Operationdao.GetOperationSelectValue(operationid);
	}

	public String GetOperationValue(int operationid) {
		// TODO Auto-generated method stub
		return Operationdao.GetOperationValue(operationid);
	}

	public void SetShowOrHidden(int operationid, int isshow) {
		// TODO Auto-generated method stub
		
		Operationdao.SetShowOrHidden(operationid, isshow);
	}

	public List GetOperationListByIsShow() {
		// TODO Auto-generated method stub
		return Operationdao.GetOperationListByIsShow();
	}

	public void Setdatasource(int operationid, int datasource) {
		// TODO Auto-generated method stub
		Operationdao.Setdatasource(operationid, datasource);
	}

	public String GetSqlStrByOperationId(int operationid) {
		// TODO Auto-generated method stub
		return Operationdao.GetSqlStrByOperationId(operationid);
	}

	public void AddOperationSqlStr(int operationid, String sqlstr) {
		// TODO Auto-generated method stub
		Operationdao.AddOperationSqlStr(operationid, sqlstr);
	}

	public String GetOperationFiledNameByOperationId(int operationid) {
		// TODO Auto-generated method stub
		return Operationdao.GetOperationFiledNameByOperationId(operationid);
	}

	public List GetShowOperationBySubjectType(int subjecttype) {
		// TODO Auto-generated method stub
		return Operationdao.GetShowOperationBySubjectType(subjecttype);
	}

	@Override
	public List GetOperationByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return Operationdao.GetOperationByProjectId(projectid);
	}

	@Override
	public String GetCustomFiledName(int subjecttype, int projectid) {
		// TODO Auto-generated method stub
		return Operationdao.GetCustomFiledName(subjecttype, projectid);
	}

	@Override
	public void SetFieldNameIsUsed(String fieldname, int projectid) {
		// TODO Auto-generated method stub
		Operationdao.SetFieldNameIsUsed(fieldname, projectid);
	}

	@Override
	public void SetFieldDefatultProjectId(int projectid) {
		// TODO Auto-generated method stub
		System.out.println("service:::::::::::::"+projectid);
		Operationdao.SetFieldDefatultProjectId(projectid);
	}

	@Override
	public void SetFieldProjectInit() {
		// TODO Auto-generated method stub
		Operationdao.SetFieldProjectInit();
	}

	@Override
	public List GetShowOperationByTask() {
		// TODO Auto-generated method stub
		return Operationdao.GetShowOperationByTask();
	}

	@Override
	public List GetTaskAndCaseOperationList() {
		// TODO Auto-generated method stub
		return Operationdao.GetTaskAndCaseOperationList();
	}

}
