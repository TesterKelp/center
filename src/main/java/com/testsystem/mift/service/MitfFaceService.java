package com.testsystem.mift.service;

import java.util.List;

import com.testsystem.mift.vo.MitfFace;

public interface MitfFaceService {

	public List GetFaceListByAll();
	public List GetFaceListByProjectId(int ProjectId);
	public List GetFaceListByProjectIdModuleId(int ProjectId , int ModuleId);
	public List GetFaceListByModuleId(int ModuleId);
	public void AddFace(MitfFace mitfFace);
	public List GetInterfacDetailById(int interfaceid);
}
