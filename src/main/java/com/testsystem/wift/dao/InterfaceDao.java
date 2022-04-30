package com.testsystem.wift.dao;

import java.util.List;

import com.testsystem.wift.vo.Face;
import com.testsystem.wift.vo.InterfaceIndex;
import com.testsystem.wift.vo.RequestHeader;
import com.testsystem.wift.vo.RequestParamete;
import com.testsystem.wift.vo.ResponseHeader;
import com.testsystem.wift.vo.ResponseParamete;

public interface InterfaceDao {
	public abstract List GetFaceListByAll();

	  public abstract List GetFaceListByModuleId(int paramInt);

	  public abstract List GetFaceListByProjectId(int paramInt);

	  public abstract List GetFaceListByProjectIdModuleId(int paramInt1, int paramInt2);

	  public abstract void AddFace(Face paramFace);

	  public abstract List GetInterfacDetailById(int paramInt);

	  public abstract int DelInterfacById(int paramInt);

	  public abstract boolean InterfacHasCase(int paramInt);

	  public abstract int CreateInterfaceIndex(InterfaceIndex paramInterfaceIndex);
	  
	  public  void SaveJson(int interfaceid, String jsonstr);

	  public  String GetJsonStr(int interfaceid);
	  
	  public abstract void CreateInterfaceRequest(RequestParamete paramRequestParamete);

	  public abstract void CreateInterfaceResponse(ResponseParamete paramResponseParamete);

	  public abstract void CreateInterfaceRequestHeader(RequestHeader paramRequestHeader);

	  public abstract void CreateInterfaceResponseHeader(ResponseHeader paramResponseHeader);

	  public abstract List GetInterfaceIndexById(int paramInt);

	  public abstract List GetInterfaceRequestById(int paramInt);

	  public abstract List GetInterfaceResponseById(int paramInt);

	  public abstract List GetInterfaceRequestHeader(int paramInt);

	  public abstract List GetInterfaceResponseHeader(int paramInt);
}
