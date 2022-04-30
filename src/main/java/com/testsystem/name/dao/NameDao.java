package com.testsystem.name.dao;

import java.util.List;

import com.testsystem.name.tools.P;
import com.testsystem.name.vo.Kangxi;

public interface NameDao {

	
	public  List GetAllName();
	
	public  List GetMoreName();
	
	public  List GetFullNameById(int nameId);
	
	public  List GetNameInfoById(int nameId);
	
	public  List  GetAllNameSource();
	
	public  List  GetFullNameByName(String name);
	
	public  List  GetFullNameByNameX(String name); 
	
	public  List  GetContentBytype(int type);
	
	public  List  GetContentById(int id);
	
	public P GEtNameSource(int pageSize ,int pageNumber);
	
	public int  GetFirstNameId(String firstname);
	
	public boolean IsDoubleFirstName(String firstname);
	
	public List  GetSearchNameResult(String word ,int searchType);
	
	public List  GetSearchNameResultAll(String word ,int searchType);
	
	public String GetFirestName(int id);
	
	public String  GetWuXing(String word);
	
	public String GetFullName(int id);
	
	public String GetFirestNameByFullNameId(int id);
	
	public String GetZiJiShi(String zi);
	
	public int GetBiHua(String zi);
	
	public String GetXiongJi(String sc);
	
	public String  GetDetail(String sc);
	
	public String  GetDetail(int n);
	public  List  GetAllFullName(int startid ,int endid);
	
	public  void  InsertWord(String word);
	
	public  void  InsertMoreWord(String sql);
	
	public  void  InsertBatchWord(String[] sql);
	
	public void  UpdateNameFomrat(String  name ,String nameid);
	
	public  List GetFullNameByIdPage(int start ,int pagesize , int nameid ) ;
	
	public  int UserSubmitName(String name);
	
	public List GetWordInfo(String word);
	
	public List<Kangxi> GetKeyInfo(String word);
	public  List GetNameId(int start ,int pagesize );
	
	public  int  GetNameTatol();
	
	public  int  GetNameHtmlMax();
	
	public  List  GetListNoHtml(int maxhtml);
	
	public  void  SetNameHtmlMax(int nameid,int maxhtml);
	
	public  int  GetNameIdNoHtml(int maxhtml);
	
	
	public  List SearchNameSecondName(String secondName,int page);
	
	public  List SearchNamelastName(String lastName,int page);
	
	public  List  SearchName(int page);
	
	public  int  GetNameTotal(int d ,String name);
	
	 public  P GetFullNamePageById(int nameid ,int pageNumber) ;
	
	 public  List  GetNameId(int startnameid);
	 
	 public int  GetNameTotal(int nameid);
}
