package com.testsystem.wift.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.wift.dao.FaceDao;
import com.testsystem.wift.dao.InProjectDao;
import com.testsystem.wift.service.FaceService;
import com.testsystem.wift.vo.Face;
@Service
public class FaceServiceImpl implements FaceService {
	@Autowired
	private FaceDao faceDao ;
	public List GetFaceListByAll() {
		// TODO Auto-generated method stub
		return faceDao.GetFaceListByAll();
	}

	public List GetFaceListByModuleId(int ModuleId) {
		// TODO Auto-generated method stub
		return faceDao.GetFaceListByModuleId(ModuleId);
	}

	public List GetFaceListByProjectId(int ProjectId) {
		// TODO Auto-generated method stub
		return faceDao.GetFaceListByProjectId(ProjectId);
	}

	public List GetFaceListByProjectIdModuleId(int ProjectId, int ModuleId) {
		// TODO Auto-generated method stub
		return faceDao.GetFaceListByProjectIdModuleId(ProjectId, ModuleId);
	}

	public void AddFace(Face face) {
		// TODO Auto-generated method stub
		faceDao.AddFace(face);
	}

	public List GetInterfacDetailById(int interfaceid) {
		// TODO Auto-generated method stub
		return faceDao.GetInterfacDetailById(interfaceid);
	}

}
