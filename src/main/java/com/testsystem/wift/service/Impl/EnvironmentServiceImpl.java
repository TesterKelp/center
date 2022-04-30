package com.testsystem.wift.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.wift.dao.EnvironmentDao;
import com.testsystem.wift.service.EnvironmentService;

@Service
public class EnvironmentServiceImpl
  implements EnvironmentService
{

  @Autowired
  private EnvironmentDao environmentDao;

  public List GetEnvironmentListByProjectId(int projectid)
  {
    return this.environmentDao.GetEnvironmentListByProjectId(projectid);
  }

  public List GetEnvironmentByProjectId(int ProjectId)
  {
    return this.environmentDao.GetEnvironmentByProjectId(ProjectId);
  }

  public List GetEnvironmentTypeByProjectId(int ProjectId)
  {
    return this.environmentDao.GetEnvironmentTypeByProjectId(ProjectId);
  }

  public List GetEnvironmentTypeServer(int ProjectId, int TypeId)
  {
    return this.environmentDao.GetEnvironmentTypeServer(ProjectId, TypeId);
  }

  public int CreateEnvironmentByProjectId(int ProjectId, String EnvironmentName)
  {
    return this.environmentDao.CreateEnvironmentByProjectId(ProjectId, EnvironmentName);
  }

  public void CreateGetEnvironmentTypeServer(int TypeId, int EnvironmentId)
  {
    this.environmentDao.CreateGetEnvironmentTypeServer(TypeId, EnvironmentId);
  }

  public int CreateEnvironmentTypeByProjectId(int ProjectId, String TypeName)
  {
    return this.environmentDao.CreateEnvironmentTypeByProjectId(ProjectId, TypeName);
  }

  public int SaveServerValue(int ServerId, String ServerValue)
  {
    return this.environmentDao.SaveServerValue(ServerId, ServerValue);
  }

@Override
public void DelEnvironment(int environmentid) {
	// TODO Auto-generated method stub
	this.environmentDao.DelEnvironment(environmentid);
}
}