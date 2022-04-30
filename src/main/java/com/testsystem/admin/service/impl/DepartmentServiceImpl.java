package com.testsystem.admin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.DepartmentDao;
import com.testsystem.admin.service.DepartmentService;
import com.testsystem.admin.vo.Department;
@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	private DepartmentDao departmentDao;
	public void SaveDepartment(Department department) {
		// TODO Auto-generated method stub
		departmentDao.SaveDepartment(department);
	}

}
