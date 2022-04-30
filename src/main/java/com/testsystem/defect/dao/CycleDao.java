package com.testsystem.defect.dao;

import java.util.List;

import com.testsystem.defect.vo.Cycle;

public interface CycleDao {
	public List CycleByBugId(int bugid) ;
	public  void  AddCycle(Cycle cycle);
}
