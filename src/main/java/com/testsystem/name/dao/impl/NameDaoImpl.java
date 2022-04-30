package com.testsystem.name.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.NameDao;
import com.testsystem.name.tools.P;
import com.testsystem.name.vo.Kangxi;
import com.testsystem.quanxian.vo.SysUser;

@Repository
public class NameDaoImpl implements NameDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	
	
	
	@Override
	public List GetAllName() {
		// TODO Auto-generated method stub
		
		 String sql = "SELECT nameid,name,namenumber from life_name  where namenumber ='1' ";
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}



	@Override
	public List GetFullNameById(int nameId) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from life_full_name  where nameid="+nameId;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}



	@Override
	public List GetNameInfoById(int nameId) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from life_name  where nameid="+nameId ;
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}



	@Override
	public List GetAllNameSource() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public List GetFullNameByName(String name) {
		// TODO Auto-generated method stub
		
		 String sql = "SELECT * from life_full_name  where fullname like '%"+name+"%' ";
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}



	@Override
	public List GetFullNameByNameX(String name) {
		// TODO Auto-generated method stub
		if(name.contains("x")){
			name =name.replace("x", "%");
		}
		if(name.contains("X")){
			name =name.replace("X", "%");
		}
		

		 String sql = "SELECT * from life_full_name  where fullname like '"+name+"' ";
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}



	@Override
	public List GetMoreName() {
		// TODO Auto-generated method stub
		String sql = "SELECT nameid,name,namenumber from life_name  where namenumber ='2' ";
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}



	@Override
	public List GetContentBytype(int type) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from life_content  where articletype="+type;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}



	@Override
	public List GetContentById(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from life_content  where articleid="+id;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}



	@Override
	public P GEtNameSource(int pageSize, int pageNumber) {
		// TODO Auto-generated method stub
		 String sql = "SELECT count(*) from life_name ";
			
			
			int totalRecord = jdbcTemplate.queryForInt(sql);

			int totalPage = 0;   //总页数
			 if (totalRecord % pageSize == 0) {
				 totalPage = totalRecord / pageSize;
		        } else {
		         totalPage = totalRecord / pageSize + 1;
		        }
			 String sq = "SELECT nameid,name,namenumber from life_name  ";
		
			 if(pageNumber<=1){
		            sq+=" limit 0,"+pageSize;
		        }else{
		            sq+=" limit "+((pageNumber-1)*pageSize)+","+pageSize;
		        } 
			// System.out.println("tt:"+sq);
			List lst = jdbcTemplate.queryForList(sq) ;
		
		   P p= new P();
	//	System.out.println("tt:"+lst);
		p.setTotalRecord(totalRecord);
		p.setTotalPage(totalPage);
		p.setList(lst);

		return p;
	}



	@Override
	public String GetFirestName(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT name from life_name  where nameid ='"+id+"'"; 
		return  (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;
	}



	@Override
	public String GetZiJiShi(String zi) {
		// TODO Auto-generated method stub
		try { 
		String sql = "SELECT jijie from life_analyse  where zi ='"+zi+"'"; 	
		return (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;

		}catch (DataAccessException e) {  
			return zi ;
			  }  
	}



	@Override
	public String GetFullName(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT fullname from life_full_name  where id ='"+id+"'"; 
		return  (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;
	}



	@Override
	public List GetAllFullName(int startid, int endid) {
		// TODO Auto-generated method stub
		String  sql ="select  *  from life_full_name  where  id>"+startid+"  and id<"+endid  ;  
		List lst = new ArrayList();
		return 	lst = jdbcTemplate.queryForList(sql);
	}



	@Override
	public void InsertWord(String word) {
		// TODO Auto-generated method stub
		
		String 	sql="	insert into life_key ( zi ) "
				+"SELECT '"+word+"' from DUAL WHERE NOT EXISTS(select zi  from  life_key  where zi ='"+word+"')"  ;
//		System.out.println("sql=="+sql);
		jdbcTemplate.update(sql);	
	}



	@Override
	public void InsertMoreWord(String sql) {
		// TODO Auto-generated method stub
		
		
		
		jdbcTemplate.execute(sql);

		
		
	}



	@Override
	public void InsertBatchWord(String[] sql) {
		// TODO Auto-generated method stub
		jdbcTemplate.batchUpdate(sql);
	}



	@Override
	public int GetBiHua(String zi) {
		// TODO Auto-generated method stub
		
		String sql = "SELECT ftbh from life_lib  where jtz ='"+zi+"'"; 
		return  jdbcTemplate.queryForInt(sql);
	}



	@Override
	public String GetXiongJi(String sc) {
		// TODO Auto-generated method stub
		String sql = "SELECT rs from life_sc  where sc ='"+sc+"'"; 
		//System.out.println(sql);
		return  (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;
	}



	@Override
	public String GetDetail(String sc) {
		// TODO Auto-generated method stub
		String sql = "SELECT detail from life_sc  where sc ='"+sc+"'"; 
		return  (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;
	}



	@Override
	public void UpdateNameFomrat(String name, String nameid) {
		// TODO Auto-generated method stub
		String sql = "UPDATE life_full_name SET fullname=REPLACE(fullname,'"+name+"','')  where nameid='"+nameid+"' ";
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}



	@Override
	public String GetFirestNameByFullNameId(int id) {
		// TODO Auto-generated method stub
		
		String sql = "SELECT name from   life_full_name  a ,life_name b     where  a.nameid=b.nameid  and a.id="+id; 
		return  (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;

	}



	@Override
	public int GetFirstNameId(String firstname) {
		// TODO Auto-generated method stub
		
		String sql = "SELECT nameid from   life_name  a      where  a.name='"+firstname+"'"; 
		
		return jdbcTemplate.queryForInt(sql);
	}



	@Override
	public List GetSearchNameResult(String word, int searchType) {
		// TODO Auto-generated method stub
		
		 String sql = "";
		 String firstname ;
		 String secondname ;
		 char[]  words = word.toCharArray();
//		    if (searchType == 1) {
//		    	 if(words.length==1){  // 一个字  一个姓
//		    		 firstname =  String.valueOf(words[0])  ;
//		    		 sql = "select * from life_full_name where nameid=(select nameid from life_name  where  name='"+firstname+"')";  
//		    	 }else{  // 两个字  一个姓 一个是名第一个字
//		    		  firstname =  String.valueOf(words[0])  ;	 
//		    		  secondname = word.replace(firstname, "");
//		    		 sql = "select * from life_full_name where nameid=(select nameid from life_name  where  name='"+firstname+"')   and fullname like '" +secondname+"%'   "        ;  
//		    	 }
//		    } else {
//		      String start = word.substring(0, word.indexOf("x"));
//		      String end = word.substring(start.length() + 1, word.length());
//		      sql = "select * from life_full_name where nameid=(select nameid from life_name  where  name='"+start+"')  and fullname like '%"+end+"' " ;
//		    }
		    
		    
		    
		    
		    if (searchType == 1) {
		    	 if(words.length==1){  // 一个字  一个姓
		    		 firstname =  String.valueOf(words[0])  ;
		    		 sql = "select   fullname    from life_full_name_base   order by  rand()    limit  15000";  
		    	 }else{  // 两个字  一个姓 一个是名第一个字
		    		  firstname =  String.valueOf(words[0])  ;	 
		    		  secondname = word.replace(firstname, "");
		    		  sql = " select  fullname    from life_full_name_base  where   fullname like '" +secondname+"%'      order by  rand()      "        ;  
//		    		  sql = "select * from life_full_name where nameid=(select nameid from life_name  where  name='"+firstname+"')   and fullname like '" +secondname+"%'   "        ;  
		    	 }
		    } else {
		      String start = word.substring(0, word.indexOf("x"));
		      String end = word.substring(start.length() + 1, word.length());
		      sql = "   select  fullname from life_full_name_base where  fullname like '%"+end+"'     order by  rand()           " ;
//		      sql = "select * from life_full_name where nameid=(select nameid from life_name  where  name='"+start+"')  and fullname like '%"+end+"' " ;
		   
		    }

		    return jdbcTemplate.queryForList(sql) ;
	}



	@Override
	public List GetSearchNameResultAll(String word, int searchType) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public boolean IsDoubleFirstName(String firstname) {
		// TODO Auto-generated method stub
		
		String sql="select count(*) from life_name where name='"+firstname+"' limit 1 " ;
		
		
		int rs =jdbcTemplate.queryForInt(sql);
		
		if(rs==0){
			return false;
		}else {
			
			return true ;
		}
		
		
	}



	@Override
	public String GetWuXing(String word) {
		// TODO Auto-generated method stub
		String  rs ="无";
		
		String sql = "SELECT wx from   life_wuxing    where  word like '%"+word+"%' limit 1  "; 
		
		try{
			rs = (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;
		}catch(Exception e){
			
			String sq ="select  wx  from  life_lib  where  jtz='"+word+"'" ;
			rs = (String)   jdbcTemplate.queryForObject(sq, java.lang.String.class) ;
		}
		
		
		
		return  rs ;

	}



	@Override
	public List GetFullNameByIdPage(int start, int pagesize, int nameid) {
		// TODO Auto-generated method stub
		String sql = "SELECT id, nameid from life_full_name  where nameid="+nameid+" limit "+start+" , "+pagesize  ;   
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;

	}



	@Override
	public int UserSubmitName(String name) {
		// TODO Auto-generated method stub
		String sql=" insert  into life_user_name (name) values ('"+name+"')" ;
		return jdbcTemplate.update(sql);
	}



	@Override
	public String GetDetail(int n) {
		// TODO Auto-generated method stub
		String sql = "SELECT detail from life_81  where id ='"+n+"'"; 
		return  (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;
	}



	@Override
	public List GetWordInfo(String word) {
		// TODO Auto-generated method stub
		
		String sql = "select *  from  life_lib  where jtz='"+word+"'" ;   
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}



	@Override
	public List<Kangxi> GetKeyInfo(String word) {
		// TODO Auto-generated method stub
		
		String sql = "select *  from  life_lib  where jtz='"+word+"'" ;   
		List<Kangxi> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper(Kangxi.class));
		return lst;

	}



	@Override
	public List GetNameId(int start, int pagesize) {
		// TODO Auto-generated method stub
		String sql = "SELECT id , nameid from life_full_name   limit "+start+" , "+pagesize  ;   
		List lst = new ArrayList();
		return lst = jdbcTemplate.queryForList(sql);
	}



	@Override
	public int GetNameTatol() {
		// TODO Auto-generated method stub
		String sql=" SELECT count(*)   from life_full_name  ";
		
		
		return jdbcTemplate.queryForInt(sql);
	}



	@Override
	public int GetNameHtmlMax() {
		// TODO Auto-generated method stub
		String sql="select  max(html)  from life_name_html";
		
		return jdbcTemplate.queryForInt(sql);
	}



	@Override
	public List GetListNoHtml(int maxhtml) {
		// TODO Auto-generated method stub
		
		String sql = "select *  from  life_name_html  where  html!=0  and    html< "+maxhtml  ;   
		List lst = new ArrayList();
		return lst = jdbcTemplate.queryForList(sql);
	}



	@Override
	public void SetNameHtmlMax(int nameid, int maxhtml) {
		// TODO Auto-generated method stub
		String sql = "update   life_name_html    set html='"+maxhtml+"'   where nameid="+nameid  ;   
		System.out.println(sql);
		jdbcTemplate.update(sql) ;
	}



	@Override
	public int GetNameIdNoHtml(int maxhtml) {
		// TODO Auto-generated method stub
		String sql="select nameid  from  life_name_html  where  html!=0  and  html<'"+maxhtml+"'   order by nameid asc   limit 1 ";
		return jdbcTemplate.queryForInt(sql);
	}



	@Override
	public List SearchNameSecondName(String secondName, int page) {
		// TODO Auto-generated method stub
		List lst = null ;
		int  pagesize =100 ;
		String  sqll = " select  fullname    from life_full_name_base  where   fullname like '" +secondName+"%' " ;     
		 if(page<=1){
	            sqll+=" limit 0,"+pagesize;
	        }else{
	            sqll+=" limit "+((page-1)*pagesize)+","+pagesize;
	        } 
		 System.out.print(sqll);
		 return 	 lst = jdbcTemplate.queryForList(sqll)  ;
	}


	
	
	
	
	

	@Override
	public List SearchNamelastName(String lastName, int page) {
		// TODO Auto-generated method stub
		List lst = null ;
		int  pagesize =100 ;
		String  sqll = " select  fullname from life_full_name_base  where  fullname like '%"+lastName+"'    " ;
		 if(page<=1){
	            sqll+=" limit 0,"+pagesize;
	        }else{
	            sqll+=" limit "+((page-1)*pagesize)+","+pagesize;
	        } 
		 System.out.print(sqll);
		 return 	 lst = jdbcTemplate.queryForList(sqll)  ;
	}

	 

	@Override
	public List SearchName(int page) {
		// TODO Auto-generated method stub
		List lst = null ;
		int  pagesize =100 ;
		String  sqll = " select   fullname    from life_full_name_base " ;
		 if(page<=1){
	            sqll+=" limit 0,"+pagesize;
	        }else{
	            sqll+=" limit "+((page-1)*pagesize)+","+pagesize;
	        } 
		 System.out.print(sqll);
		 return 	 lst = jdbcTemplate.queryForList(sqll)  ;
	}



	@Override
	public int GetNameTotal(int d ,String name) {
		// TODO Auto-generated method stub
		String sql="";
		if(d==1){sql="select  count(fullname)    from life_full_name_base " ;} 
		if(d==2){sql="select  count(fullname)    from life_full_name_base  where fullname like '"+name+"%'" ;}
		if(d==3){sql="select  count(fullname)    from life_full_name_base  where fullname like '%"+name+"'" ;}
		return jdbcTemplate.queryForInt(sql);
	}



	@Override
	public P GetFullNamePageById(int nameid ,int pageNumber) {
		// TODO Auto-generated method stub
		
		int  pageSize=1500;
		 String sql = "SELECT count(*)  from life_full_name  where nameid="+nameid; ;
		int totalRecord = jdbcTemplate.queryForInt(sql);

			int totalPage = 0;   //总页数
			 if (totalRecord % pageSize == 0) {
				 totalPage = totalRecord / pageSize;
		        } else {
		         totalPage = totalRecord / pageSize + 1;
		        }
			 String sq = "SELECT * from life_full_name  where nameid="+nameid;
		
			 if(pageNumber<=1){
		            sq+=" limit 0,"+pageSize;
		        }else{
		            sq+=" limit "+((pageNumber-1)*pageSize)+","+pageSize;
		        } 
			// System.out.println("tt:"+sq);
			List lst = jdbcTemplate.queryForList(sq) ;
		
		   P p= new P();
		//System.out.println("tt:"+lst);
		p.setTotalRecord(totalRecord);
		p.setTotalPage(totalPage);
		p.setList(lst);

		return p;
	}



	@Override
	public List GetNameId(int startnameid) {
		// TODO Auto-generated method stub
		
	//	 String sql = "SELECT nameid from life_name  where   nameid>='"+startnameid+"' and  namenumber ='1' ";
		 String sql = "	 select  a.nameid   from  life_name as a ,life_full_name_total as b  where a.nameid = b.nameid  and   a.nameid>='"+startnameid+"' and   a.namenumber='1' " ;
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
		
	}



	@Override
	public int GetNameTotal(int nameid) {
		// TODO Auto-generated method stub
		int  pageSize=1500;
//		 String sql = "SELECT count(*)  from life_full_name  where nameid="+nameid; ;
		 String sql = "select  total  from  life_full_name_total where  nameid="+nameid; ;
		int totalRecord = jdbcTemplate.queryForInt(sql);
		int totalPage = 0;   //总页数
		 if (totalRecord % pageSize == 0) {
			 totalPage = totalRecord / pageSize;
	        } else {
	         totalPage = totalRecord / pageSize + 1;
	        }
		return totalPage;
	}

}
