package com.testsystem.wift.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.wift.dao.IfCaseDao;
import com.testsystem.wift.service.IfCaseService;
import com.testsystem.wift.vo.CaseAssertion;
import com.testsystem.wift.vo.CaseBody;
import com.testsystem.wift.vo.CaseHeaderAssertion;
import com.testsystem.wift.vo.CaseIndex;
import com.testsystem.wift.vo.CaseIndex1;
import com.testsystem.wift.vo.CaseRequest;
import com.testsystem.wift.vo.CaseRequestHeader;
@Service
public class IfCaseServiceImpl implements IfCaseService {
	@Autowired
	private IfCaseDao  ifCaseDao ;
	public List GetIfCaseAll() {
		// TODO Auto-generated method stub
		return  ifCaseDao.GetIfCaseAll();
	}
	public int SaveCaseIndex(CaseIndex1 caseindex) {
		// TODO Auto-generated method stub
		return ifCaseDao.SaveCaseIndex(caseindex);
	}
	public void SaveCaseBody(CaseBody casebody) {
		// TODO Auto-generated method stub
		ifCaseDao.SaveCaseBody(casebody);
	}
	public List GetCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return ifCaseDao.GetCaseIndexByCaseId(caseid);
	}
	public List GetCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return ifCaseDao.GetCaseBodyByCaseId(caseid);
	}
	
	
	
	
	public int CreateCaseIndex(CaseIndex caseIndex)
	  {
	    return this.ifCaseDao.CreateCaseIndex(caseIndex);
	  }

	  public void CreateCaseRequest(CaseRequest caseRequest)
	  {
	    this.ifCaseDao.CreateCaseRequest(caseRequest);
	  }

	  public void CreateCaseRequestHeader(CaseRequestHeader caseRequestHeader)
	  {
	    this.ifCaseDao.CreateCaseRequestHeader(caseRequestHeader);
	  }

	  public List GetCaseIndex(int caseId)
	  {
	    return this.ifCaseDao.GetCaseIndex(caseId);
	  }

	  public List GetCaseRequest(int caseId)
	  {
	    return this.ifCaseDao.GetCaseRequest(caseId);
	  }

	  public List GetCaseRequestHeader(int caseId)
	  {
	    return this.ifCaseDao.GetCaseRequestHeader(caseId);
	  }

	  public int DelInterfaceTestCaseById(int caseid)
	  {
	    return this.ifCaseDao.DelInterfaceTestCaseById(caseid);
	  }

	  public void SaveJson(int id, String jsonstr)
	  {
	    this.ifCaseDao.SaveJson(id, jsonstr);
	  }

	  public String GetJson(int id)
	  {
	    return this.ifCaseDao.GetJson(id);
	  }
	
	
	
	
	
	@Override
	public List GetCaseStandardList() {
		// TODO Auto-generated method stub
		return ifCaseDao.GetCaseStandardList();
	}
	@Override
	public void CreateCaseAssertion(CaseAssertion caseAssertion) {
		// TODO Auto-generated method stub
		ifCaseDao.CreateCaseAssertion(caseAssertion);
	}
	@Override
	public List GetCaseAssertionByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return ifCaseDao.GetCaseAssertionByCaseId(caseid);
	}
	@Override
	public List GetCaseByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return ifCaseDao.GetCaseByProjectId(projectid);
	}
	@Override
	public List GetCaseByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		return ifCaseDao.GetCaseByModuleId(moduleid);
	}
	@Override
	public List GetCaseByInterfaceId(int interfaceid) {
		// TODO Auto-generated method stub
		return ifCaseDao.GetCaseByInterfaceId(interfaceid);
	}
	@Override
	public void CreateCaseAssertionHeader(CaseHeaderAssertion caseHeaderAssertion) {
		// TODO Auto-generated method stub
		ifCaseDao.CreateCaseAssertionHeader(caseHeaderAssertion);
	}
	@Override
	public List GetCaseHeaderAssertionByCaseId(int caseId) {
		// TODO Auto-generated method stub
		return ifCaseDao.GetCaseHeaderAssertionByCaseId(caseId);
	}

}
