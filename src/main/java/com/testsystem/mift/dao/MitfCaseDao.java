package com.testsystem.mift.dao;

import java.util.List;

import com.testsystem.mift.vo.MitfBody;
import com.testsystem.mift.vo.MitfIndex;

public interface MitfCaseDao {
	public  List GetIfCaseAll();
	public int  SaveCaseIndex(MitfIndex mitfIndex );
	public void SaveCaseBody(MitfBody mitfBody);
	public List Mitf(int caseid);
	public List GetCaseBodyByCaseId(int caseid);
	public List GetCaseIndexByCaseId(int caseid);
}
