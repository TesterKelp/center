package com.testsystem.defect.service.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.admin.vo.User;
import com.testsystem.defect.dao.CaseDao;
import com.testsystem.defect.service.CaseService;
import com.testsystem.defect.vo.DefCase;
@Service
public class CaseServiceImpl implements CaseService {
  @Autowired
  private CaseDao caseDao ;
  
	public List GetCase() {
		// TODO Auto-generated method stub
		return caseDao.GetCase();
	}


	public void AddDefectCaseBody(String[] stepall, String[] resultall, int caseid) {
		// TODO Auto-generated method stub
		
		String step = null;
		String result = null;
		
		for (int i = 0; i < stepall.length; i++) {
			if (stepall[i] == null || stepall[i].equals("")) {
			} else {

				try {
					step = URLDecoder.decode(stepall[i],"UTF-8");
					result = URLDecoder.decode(resultall[i],"UTF-8");
					
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				caseDao.AddDefectCaseBody(step, result, caseid,i+1);
			}
		}
	}

	public int AddDefectCase(DefCase defCase) {
		// TODO Auto-generated method stub
		defCase.setCuserid(UserUtil.getCurrentUserinfo().getUserid());
		defCase.setModuleid(1);
		return caseDao.AddDefectCase(defCase);
	}


	public DefCase GetCaseByCaseId(int caseid) {
		// TODO Auto-generated method stub
		List<DefCase> list = caseDao.GetCaseByCaseId(caseid);
		System.out.println(list+"11111");
		if(list!=null && list.size()==1){
			return list.get(0);
		}
		return null;
	}


	public List GetCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return caseDao.GetCaseBodyByCaseId(caseid);
	}


	@Override
	public int CreateCase(String sql) {
		// TODO Auto-generated method stub
		return caseDao.CreateCase(sql);
	}


	@Override
	public List GetCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return caseDao.GetCaseIndexByCaseId(caseid);
	}


	@Override
	public List GetCaseByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return caseDao.GetCaseByProjectId(projectid);
	}


	@Override
	public void DelCase(int caseid) {
		// TODO Auto-generated method stub
		caseDao.DelCaseIndex(caseid);
		caseDao.DelCaseBody(caseid);
	}


	@Override
	public List GetCaseSearchCondition() {
		// TODO Auto-generated method stub
		return this.caseDao.GetCaseSearchCondition(UserUtil.getCurrentUserinfo().getUserid());
	}

}
