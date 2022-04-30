package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.DeptDao;
import com.testsystem.defect.service.DeptService;
@Service
public class DeptServiceImpl implements DeptService {

	
	@Autowired
	private DeptDao deptDao ;
	public List GetDeptList() {
		// TODO Auto-generated method stub
		return deptDao.GetDeptList();
	}

}
