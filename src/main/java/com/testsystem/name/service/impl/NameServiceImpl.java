
package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.NameDao;
import com.testsystem.name.service.NameService;
import com.testsystem.name.tools.P;
import com.testsystem.name.vo.Kangxi;


@Service
public class NameServiceImpl implements NameService {

	
	@Autowired
	private NameDao nameDao ;
	
	@Override
	public List GetAllName() {
		// TODO Auto-generated method stub
		return nameDao.GetAllName();
	}

	@Override
	public List GetFullNameById(int nameId) {
		// TODO Auto-generated method stub
		return nameDao.GetFullNameById(nameId);
	}

	@Override
	public List GetNameInfoById(int nameId) {
		// TODO Auto-generated method stub
		return nameDao.GetNameInfoById(nameId);
	}

	@Override
	public List GetAllNameSource() {
		// TODO Auto-generated method stub
		return nameDao.GetAllNameSource();
	}

	@Override
	public List GetFullNameByName(String name) {
		// TODO Auto-generated method stub
		return nameDao.GetFullNameByName(name);
	}

	@Override
	public List GetFullNameByNameX(String name) {
		// TODO Auto-generated method stub
		return nameDao.GetFullNameByNameX(name);
	}

	@Override
	public List GetMoreName() {
		// TODO Auto-generated method stub
		return nameDao.GetMoreName();
	}

	@Override
	public List GetContentBytype(int type) {
		// TODO Auto-generated method stub
		return nameDao.GetContentBytype(type);
	}

	@Override
	public List GetContentById(int id) {
		// TODO Auto-generated method stub
		return nameDao.GetContentById(id);
	}

	@Override
	public P GEtNameSource(int pageSize, int pageNumber) {
		// TODO Auto-generated method stub
		return nameDao.GEtNameSource(pageSize, pageNumber);
	}

	@Override
	public String GetFirestName(int id) {
		// TODO Auto-generated method stub
		return nameDao.GetFirestName(id);
	}

	@Override
	public String GetZiJiShi(String zi) {
		// TODO Auto-generated method stub
		return nameDao.GetZiJiShi(zi);
	}

	@Override
	public String GetFullName(int id) {
		// TODO Auto-generated method stub
		return nameDao.GetFullName(id);
	}

	@Override
	public List GetAllFullName(int startid, int endid) {
		// TODO Auto-generated method stub
		return nameDao.GetAllFullName(startid, endid);
	}

	@Override
	public void InsertWord(String word) {
		// TODO Auto-generated method stub
		nameDao.InsertWord(word);
	}

	@Override
	public void InsertMoreWord(String sql) {
		// TODO Auto-generated method stub
		nameDao.InsertMoreWord(sql);
	}

	@Override
	public void InsertBatchWord(String[] sql) {
		// TODO Auto-generated method stub
		nameDao.InsertBatchWord(sql);
	}

	@Override
	public int GetBiHua(String zi) {
		// TODO Auto-generated method stub
		return nameDao.GetBiHua(zi);
	}

	@Override
	public String GetXiongJi(String sc) {
		// TODO Auto-generated method stub
		return nameDao.GetXiongJi(sc);
	}

	@Override
	public String GetDetail(String sc) {
		// TODO Auto-generated method stub
		return nameDao.GetDetail(sc);
	}

	@Override
	public void UpdateNameFomrat(String name, String nameid) {
		// TODO Auto-generated method stub
		nameDao.UpdateNameFomrat(name, nameid);
	}

	@Override
	public String GetFirestNameByFullNameId(int id) {
		// TODO Auto-generated method stub
		return nameDao.GetFirestNameByFullNameId(id);
	}

	@Override
	public int GetFirstNameId(String firstname) {
		// TODO Auto-generated method stub
		return nameDao.GetFirstNameId(firstname);
	}

	@Override
	public List GetSearchNameResult(String word, int searchType) {
		// TODO Auto-generated method stub
		return nameDao.GetSearchNameResult(word, searchType);
	}

	@Override
	public List GetSearchNameResultAll(String word, int searchType) {
		// TODO Auto-generated method stub
		return nameDao.GetSearchNameResultAll(word, searchType);
	}

	@Override
	public boolean IsDoubleFirstName(String firstname) {
		// TODO Auto-generated method stub
		return nameDao.IsDoubleFirstName(firstname);
	}

	@Override
	public String GetWuXing(String word) {
		// TODO Auto-generated method stub
		return nameDao.GetWuXing(word);
	}

	@Override
	public List GetFullNameByIdPage(int start, int pagesize, int nameid) {
		// TODO Auto-generated method stub
		return nameDao.GetFullNameByIdPage(start, pagesize, nameid);
	}

	@Override
	public int UserSubmitName(String name) {
		// TODO Auto-generated method stub
		return nameDao.UserSubmitName(name);
	}

	@Override
	public String GetDetail(int n) {
		// TODO Auto-generated method stub
		return nameDao.GetDetail(n);
	}

	@Override
	public List GetWordInfo(String word) {
		// TODO Auto-generated method stub
		return nameDao.GetWordInfo(word);
	}

	@Override
	public List<Kangxi> GetKeyInfo(String word) {
		// TODO Auto-generated method stub
		return nameDao.GetKeyInfo(word);
	}

	@Override
	public List GetNameId(int start, int pagesize) {
		// TODO Auto-generated method stub
		return nameDao.GetNameId(start, pagesize);
	}

	@Override
	public int GetNameTatol() {
		// TODO Auto-generated method stub
		return nameDao.GetNameTatol();
	}

	@Override
	public int GetNameHtmlMax() {
		// TODO Auto-generated method stub
		return nameDao.GetNameHtmlMax();
	}

	@Override
	public List GetListNoHtml(int maxhtml) {
		// TODO Auto-generated method stub
		return nameDao.GetListNoHtml(maxhtml);
	}

	@Override
	public void SetNameHtmlMax(int nameid, int maxhtml) {
		// TODO Auto-generated method stub
		nameDao.SetNameHtmlMax(nameid, maxhtml);
	}

	@Override
	public int GetNameIdNoHtml(int maxhtml) {
		// TODO Auto-generated method stub
		return nameDao.GetNameIdNoHtml(maxhtml);
	}

	@Override
	public List SearchNameSecondName(String secondName, int page) {
		// TODO Auto-generated method stub
		return nameDao.SearchNameSecondName(secondName, page);
	}

	@Override
	public List SearchNamelastName(String lastName, int page) {
		// TODO Auto-generated method stub
		return nameDao.SearchNamelastName(lastName, page);
	}

	@Override
	public List SearchName(int page) {
		// TODO Auto-generated method stub
		return nameDao.SearchName(page);
	}

	@Override
	public int GetNameTotal(int d, String name) {
		// TODO Auto-generated method stub
		return nameDao.GetNameTotal(d, name);
	}

	@Override
	public P GetFullNamePageById(int nameid ,int pageNumber) {
		// TODO Auto-generated method stub
		return nameDao.GetFullNamePageById(nameid, pageNumber);
	}

	@Override
	public List GetNameId(int startnameid) {
		// TODO Auto-generated method stub
		return nameDao.GetNameId(startnameid);
	}

	@Override
	public int GetNameTotal(int nameid) {
		// TODO Auto-generated method stub
		return nameDao.GetNameTotal(nameid);
	}



	
	
	
	
}
