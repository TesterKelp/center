package com.testsystem.article.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.dao.CateDao;
import com.testsystem.article.vo.Cate;
import com.testsystem.backstage.vo.Item;

@Repository
public class CateDaoImpl implements CateDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;

	public void AddCate(Cate cate) {
		// TODO Auto-generated method stub
		
	String sql ="" ;
	jdbcTemplate.update(sql);
		
	}

	public List GetCateList() {
		// TODO Auto-generated method stub
		
		
		System.out.println("dao");
		String sql = "select * from article_cate     order by catetype";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public void SaveCate(Cate cate) {
		// TODO Auto-generated method stub
	    String  ss= "insert into article_cate  (catename,catedirectory,catetype) values "
		             +"('"+cate.getCatename()+"','"+cate.getCatedirectory()+"','"+cate.getCatetype()+"')" ;
		
	   System.out.println("sssss"+ss);
		jdbcTemplate.update(ss);

	}

	public void DelCate(int cateid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  article_cate where cateid='"+cateid+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	public List GetCateName() {
		// TODO Auto-generated method stub
		
		System.out.println("dao");
		String sql = "select cateid,catename ,scateid from article_cate   order by itemid ,logicorder";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List GetShareCateSelect() {
		// TODO Auto-generated method stub
		return null;
	}

	public List GetHiddenCateSelect() {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select cateid,catename from article_cate where catetype =1";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	@Override
	public List GetItemCate(int itemid) {
		// TODO Auto-generated method stub
		String sql = "select * from article_cate  a , article_item b  where b.item_id = a.itemid  and itemid="+itemid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	@Override
	public List GetItemCate(String item_directorie) {
		// TODO Auto-generated method stub
		String sql = "select  *  from  article_item  a ,article_cate b where    a.item_id =b.itemid and  a.item_directorie ='"+item_directorie+"' " ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	@Override
	public List GetCateJson() {
		// TODO Auto-generated method stub
	
//	String sql=" select  c.cateid  ,c.catename  ,a.catename as pname ,a.cateid as pid    from  article_cate  as a  ,"
//		+ "(select  catename ,cateid , scateid FROM article_cate   where  isshow =1 ) as c "
//		+ " where  c.scateid =a.cateid " ;
//	String sql="select  catename ,cateid , scateid as pid FROM article_cate   where  isshow =1";
	
		String sql="select  a.catename ,a.cateid , a.scateid as pid FROM article_cate a ,article_item  b   where  a.isshow =1  and b.isshow=1 and b.item_id =a.itemid" ;
	List lst = new ArrayList();
	lst = jdbcTemplate.queryForList(sql);
	System.out.println(lst);
	return lst;

	}

	@Override
	public Cate CateInfo(String catedirectory) {
		// TODO Auto-generated method stub
		String sql="select  a.cateid ,a.catetype, a.catename ,a.catedirectory  ,a.isshow ,a.itemid ,a.scateid ,a.pdir ,a.listtemplate ,a.ckeyword ,a.cdepict FROM article_cate   a  where  a.catedirectory='"+catedirectory+"'";
		System.out.println("SQl"+sql);
		Object ca  = this.jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<Cate>(Cate.class)) ;
		return  (Cate) ca;
	}

	@Override
	public Cate CateById(int cateid) {
		// TODO Auto-generated method stub
		String sql="select a.articletemplate , a.cateid ,a.catetype, a.catename ,a.catedirectory  ,a.isshow ,a.itemid ,a.scateid ,a.pdir ,a.listtemplate  FROM article_cate   a  where  a.cateid='"+cateid+"'";
		System.out.println("SQl"+sql);
		Object ca  = this.jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<Cate>(Cate.class)) ;
		return  (Cate) ca;
	}

	@Override
	public List GetCateJsonByItem(String item_directorie) {
		// TODO Auto-generated method stub
		String sql="select  a.catename ,a.cateid , a.scateid as pid FROM article_cate as a ,article_item  as b   where b.item_directorie='"+item_directorie+"' and b.item_id=a.itemid  ";
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

}
