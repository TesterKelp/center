package com.testsystem.name.dao;

import java.util.List;

import com.testsystem.name.vo.Divin;
import com.testsystem.name.vo.Divine;

public interface DivineDao {

	
	
	public  List DivineList();
	public Divine GetDivineDetailBy(int id);
	public Divin GetDivineBy(int id);
	
	public Divine GetDivineDetailBy(int divineid ,int qianid);
	public List  DivineDetailAll(int id);
	public String  GetJtBh(String jtz);
}
