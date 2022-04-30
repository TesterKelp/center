package com.testsystem.defect.service;

import java.util.List;

import com.testsystem.defect.vo.Cycle;

public interface CycleService {

	public List CycleByBugId(int bugid) ;
	
	public  void  AddCycle(Cycle cycle);
}
