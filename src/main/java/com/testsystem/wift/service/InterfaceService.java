package com.testsystem.wift.service;

import java.util.List;

import com.testsystem.wift.vo.Face;
import com.testsystem.wift.vo.InterfaceIndex;
import com.testsystem.wift.vo.RequestHeader;
import com.testsystem.wift.vo.RequestParamete;
import com.testsystem.wift.vo.ResponseHeader;
import com.testsystem.wift.vo.ResponseParamete;

public interface InterfaceService {

	
	
	 public  List GetFaceListByAll();

	  public List GetFaceListByProjectId(int paramInt);

	  public  List GetFaceListByProjectIdModuleId(int paramInt1, int paramInt2);

	  public  List GetFaceListByModuleId(int paramInt);

	  public  void AddFace(Face paramFace);

	  public  List GetInterfacDetailById(int paramInt);

	  public  int DelInterfacById(int paramInt);

	  public  boolean InterfacHasCase(int paramInt);

	  public int CreateInterfaceIndex(InterfaceIndex paramInterfaceIndex);

	  public  void SaveJson(int interfaceid, String jsonstr);
	  
	  public  String GetJsonStr(int interfaceid);
	  
	  public void CreateInterfaceRequest(RequestParamete paramRequestParamete);

	  public  void CreateInterfaceResponse(ResponseParamete paramResponseParamete);

	  public  void CreateInterfaceRequestHeader(RequestHeader paramRequestHeader);

	  public  void CreateInterfaceResponseHeader(ResponseHeader paramResponseHeader);

	  public  List GetInterfaceIndexById(int paramInt);

	  public  List GetInterfaceRequestById(int paramInt);

	  public  List GetInterfaceResponseById(int paramInt);

	  public  List GetInterfaceRequestHeader(int paramInt);

	  public  List GetInterfaceResponseHeader(int paramInt);
	
	
	
}
