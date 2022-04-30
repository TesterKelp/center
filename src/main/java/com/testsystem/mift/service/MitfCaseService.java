package com.testsystem.mift.service;

import java.util.List;

import com.testsystem.mift.vo.MitfBody;
import com.testsystem.mift.vo.MitfIndex;

public interface MitfCaseService {

	
	public  List GetIfCaseAll();
	public int  SaveCaseIndex(MitfIndex mitfIndex );
	public void SaveCaseBody(MitfBody mitfBody);
	public List GetCaseIndexByCaseId(int caseid);
	public List GetCaseBodyByCaseId(int caseid);
	
}
