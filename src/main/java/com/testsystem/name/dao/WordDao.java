package com.testsystem.name.dao;

import com.testsystem.name.vo.Kangxi;

public interface WordDao {
	public Kangxi GetKeyByWord(String word);
}
