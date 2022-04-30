package com.testsystem.defect.service;

public interface BitsService {
	
	public int GetqProjectIdByUserId(int userid);

	public int GetqLibIdByUserId(int userid);

	public void SetProjectDefault(int userid, int projectid);

	public String GetProjectNameByProjectId(int projectid);

	public String GetLibNameByUserId(int userid);

	public int GetMaxProjectId();

	public int GetMaxLibId();

	public void AddInitUserData(int userid, int projectid, int libid);

	public String GetWebSiteUrl();

	public int getNowUserProjectId();

	public String GetProjectName();

}
