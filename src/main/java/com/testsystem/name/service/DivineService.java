package com.testsystem.name.service;

import java.util.List;

import com.testsystem.name.vo.Divin;
import com.testsystem.name.vo.Divine;

public interface DivineService {


	
	public  List DivineList();
	public Divine GetDivineDetailBy(int id);
	
	public Divine GetDivineDetailBy(int divineid ,int qianid);
	
	public Divin GetDivineBy(int id);
	
	public List  DivineDetailAll(int id);
	
	
	public String  GetJtBh(String jtz);
	
	
	
}
