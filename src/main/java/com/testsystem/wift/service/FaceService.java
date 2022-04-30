package com.testsystem.wift.service;

import java.util.List;

import com.testsystem.wift.vo.Face;

public interface FaceService {

	public List GetFaceListByAll();
	public List GetFaceListByProjectId(int ProjectId);
	public List GetFaceListByProjectIdModuleId(int ProjectId , int ModuleId);
	public List GetFaceListByModuleId(int ModuleId);
	public void AddFace(Face face);
	public List GetInterfacDetailById(int interfaceid);
	
	
	
	
	
	
}
