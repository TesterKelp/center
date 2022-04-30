package com.testsystem.wift.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.wift.dao.InterfaceDao;
import com.testsystem.wift.service.InterfaceService;
import com.testsystem.wift.vo.Face;
import com.testsystem.wift.vo.InterfaceIndex;
import com.testsystem.wift.vo.RequestHeader;
import com.testsystem.wift.vo.RequestParamete;
import com.testsystem.wift.vo.ResponseHeader;
import com.testsystem.wift.vo.ResponseParamete;
@Service
public class InterfaceServiceImpl implements InterfaceService {

	@Autowired
	  private InterfaceDao faceDao;

	  public List GetFaceListByAll()
	  {
	    return this.faceDao.GetFaceListByAll();
	  }

	  public List GetFaceListByModuleId(int ModuleId)
	  {
	    return this.faceDao.GetFaceListByModuleId(ModuleId);
	  }

	  public List GetFaceListByProjectId(int ProjectId)
	  {
	    return this.faceDao.GetFaceListByProjectId(ProjectId);
	  }

	  public List GetFaceListByProjectIdModuleId(int ProjectId, int ModuleId)
	  {
	    return this.faceDao.GetFaceListByProjectIdModuleId(ProjectId, ModuleId);
	  }

	  public void AddFace(Face face)
	  {
	    this.faceDao.AddFace(face);
	  }

	  public List GetInterfacDetailById(int interfaceid)
	  {
	    return this.faceDao.GetInterfacDetailById(interfaceid);
	  }

	  public int CreateInterfaceIndex(InterfaceIndex face)
	  {
	    return this.faceDao.CreateInterfaceIndex(face);
	  }

	  public void CreateInterfaceRequest(RequestParamete requestParamete)
	  {
	    this.faceDao.CreateInterfaceRequest(requestParamete);
	  }

	  public void CreateInterfaceResponse(ResponseParamete responseParamete)
	  {
	    this.faceDao.CreateInterfaceResponse(responseParamete);
	  }

	  public void CreateInterfaceRequestHeader(RequestHeader requestHeader)
	  {
	    this.faceDao.CreateInterfaceRequestHeader(requestHeader);
	  }

	  public void CreateInterfaceResponseHeader(ResponseHeader responseHeader)
	  {
	    this.faceDao.CreateInterfaceResponseHeader(responseHeader);
	  }

	  public List GetInterfaceIndexById(int interfaceid)
	  {
	    return this.faceDao.GetInterfaceIndexById(interfaceid);
	  }

	  public List GetInterfaceRequestById(int interfaceid)
	  {
	    return this.faceDao.GetInterfaceRequestById(interfaceid);
	  }

	  public List GetInterfaceResponseById(int interfaceid)
	  {
	    return this.faceDao.GetInterfaceResponseById(interfaceid);
	  }

	  public List GetInterfaceRequestHeader(int interfaceid)
	  {
	    return this.faceDao.GetInterfaceRequestHeader(interfaceid);
	  }

	  public List GetInterfaceResponseHeader(int interfaceid)
	  {
	    return this.faceDao.GetInterfaceResponseHeader(interfaceid);
	  }

	  public int DelInterfacById(int interfaceid)
	  {
	    return this.faceDao.DelInterfacById(interfaceid);
	  }

	  public boolean InterfacHasCase(int interfaceid)
	  {
	    return this.faceDao.InterfacHasCase(interfaceid);
	  }

	@Override
	public void SaveJson(int interfaceid, String jsonstr) {
		// TODO Auto-generated method stub
		this.faceDao.SaveJson(interfaceid, jsonstr);
	}

	@Override
	public String GetJsonStr(int interfaceid) {
		// TODO Auto-generated method stub
		return faceDao.GetJsonStr(interfaceid);
	}
}
