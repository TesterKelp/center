package com.testsystem.usercenter.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.usercenter.dao.PersionDao;
import com.testsystem.usercenter.service.PersionService;
import com.testsystem.usercenter.vo.Persion;
@Service
public class PersionServiceImpl implements  PersionService{
    @Autowired
    private PersionDao persionDao ;
	public List GetPersionInfo(int userid) {
		// TODO Auto-generated method stub
		return persionDao.GetPersionInfo(userid);
	}
	public void EditPersionInfo(Persion persion) {
		// TODO Auto-generated method stub
		persionDao.EditPersionInfo(persion);
	}

}
