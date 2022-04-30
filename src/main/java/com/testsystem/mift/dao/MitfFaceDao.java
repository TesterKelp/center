package com.testsystem.mift.dao;

import java.util.List;

import com.testsystem.mift.vo.MitfFace;

public interface MitfFaceDao {
	public List GetFaceListByAll();
	public List GetFaceListByModuleId(int ModuleId);
	public List GetFaceListByProjectId(int ProjectId);
	public List GetFaceListByProjectIdModuleId(int ProjectId , int ModuleId);
	public void AddFace(MitfFace mitfFace);
	public List GetInterfacDetailById(int interfaceid);
}
