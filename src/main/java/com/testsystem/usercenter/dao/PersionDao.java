package com.testsystem.usercenter.dao;

import java.util.List;

import com.testsystem.usercenter.vo.Persion;

public interface PersionDao {

	public List GetPersionInfo(int userid);
	public  void  EditPersionInfo(Persion persion);
}
