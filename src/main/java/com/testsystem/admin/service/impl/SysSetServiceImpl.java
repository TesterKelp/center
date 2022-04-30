package com.testsystem.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.SysSetDao;
import com.testsystem.admin.service.SysSetService;
import com.testsystem.admin.vo.SysInfo;
import com.testsystem.admin.vo.User;
@Service
public class SysSetServiceImpl implements SysSetService {
	
	@Autowired
	private  SysSetDao  sysSetDao ;
	public String GetDefaultPage() {
		// TODO Auto-generated method stub
		return  sysSetDao.GetDefaultPage();
	}
	@Override
	public void SavePage(String page) {
		// TODO Auto-generated method stub
		 sysSetDao.SavePage(page);
	}
	@Override
	public String GetSysInfoValue(String fieldname) {
		// TODO Auto-generated method stub
		return sysSetDao.GetSysInfoValue(fieldname);
	}
	@Override
	public void SetSysInfoValue(String fieldname, String value) {
		// TODO Auto-generated method stub
		sysSetDao.SetSysInfoValue(fieldname, value);
	}
	@Override
	public SysInfo GetSysInfo() {
		// TODO Auto-generated method stub
		
		List<SysInfo> list = sysSetDao.GetSysInfo();
		System.out.println(list+"11111");
		if(list!=null && list.size()==1){
			return list.get(0);
		}
		return null;

	}

}
