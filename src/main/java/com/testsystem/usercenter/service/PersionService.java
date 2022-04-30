package com.testsystem.usercenter.service;

import java.util.List;

import com.testsystem.usercenter.vo.Persion;

public interface PersionService {
	
	public List GetPersionInfo(int userid);

	public  void  EditPersionInfo(Persion persion);
}
