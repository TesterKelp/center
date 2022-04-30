package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.CycleDao;
import com.testsystem.defect.service.CycleService;
import com.testsystem.defect.vo.Cycle;
@Service
public class CycleServiceImpl implements CycleService {
	@Autowired
	private  CycleDao  cycleDao;
	
	public List CycleByBugId(int bugid) {
		// TODO Auto-generated method stub
		return cycleDao.CycleByBugId(bugid);
	}
	public void AddCycle(Cycle cycle) {
		// TODO Auto-generated method stub
		cycleDao.AddCycle(cycle);
	}




}
