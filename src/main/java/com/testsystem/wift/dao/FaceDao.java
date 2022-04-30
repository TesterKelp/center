package com.testsystem.wift.dao;

import java.util.List;

import com.testsystem.wift.vo.Face;

public interface FaceDao {
	public List GetFaceListByAll();
	public List GetFaceListByModuleId(int ModuleId);
	public List GetFaceListByProjectId(int ProjectId);
	public List GetFaceListByProjectIdModuleId(int ProjectId , int ModuleId);
	public void AddFace(Face face);
	public List GetInterfacDetailById(int interfaceid);
}
