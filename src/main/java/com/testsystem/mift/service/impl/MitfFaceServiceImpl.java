package com.testsystem.mift.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mift.dao.MitfFaceDao;
import com.testsystem.mift.service.MitfFaceService;
import com.testsystem.mift.vo.MitfFace;
@Service
public class MitfFaceServiceImpl implements MitfFaceService {
	@Autowired
	private MitfFaceDao  mitfFaceDao ;
	public List GetFaceListByAll() {
		// TODO Auto-generated method stub
		return mitfFaceDao.GetFaceListByAll();
	}

	public List GetFaceListByModuleId(int ModuleId) {
		// TODO Auto-generated method stub
		return mitfFaceDao.GetFaceListByModuleId(ModuleId);
	}

	public List GetFaceListByProjectId(int ProjectId) {
		// TODO Auto-generated method stub
		return mitfFaceDao.GetFaceListByProjectId(ProjectId);
	}

	public List GetFaceListByProjectIdModuleId(int ProjectId, int ModuleId) {
		// TODO Auto-generated method stub
		return mitfFaceDao.GetFaceListByProjectIdModuleId(ProjectId, ModuleId);
	}

	public void AddFace(MitfFace mitfFace) {
		// TODO Auto-generated method stub
		mitfFaceDao.AddFace(mitfFace);
	}

	public List GetInterfacDetailById(int interfaceid) {
		// TODO Auto-generated method stub
		return mitfFaceDao.GetInterfacDetailById(interfaceid);
	}

}
