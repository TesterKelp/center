package com.testsystem.backstage.dao.impl;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.vo.Topic;
import com.testsystem.backstage.dao.ItemDao;
import com.testsystem.backstage.vo.Item;
import com.testsystem.backstage.vo.Page;
import com.testsystem.backstage.vo.PageList;
 @Repository
public class ItemDaoImpl implements ItemDao {

	 
	 @Autowired
	 private JdbcTemplate jdbcTemplate ;

	 
	 
	 
	 
	@Override
	public List ItemList() {
		// TODO Auto-generated method stub
		String sql = "select * from article_item  a ,admin_user b  where a.item_userid=b.userid   and  a.isshow='1' ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}





	@Override
	public List ArticleList(String catedirectory) {
		// TODO Auto-generated method stub
		String sql = "select *  from  article_cate a ,article_content b ,admin_user c  , article_item d  where    a.itemid=d.item_id  and    b.userid=c.userid and a.cateid=b.cateid and  catedirectory='"+catedirectory+"' ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}





	@Override
	public List ArticleList(int id) {
		// TODO Auto-generated method stub
//		String sql = "select *  from  article_cate a ,article_content b ,admin_user c  , article_item d  where    a.itemid=d.item_id  and    b.userid=c.userid and a.cateid=b.cateid and  articleid='"+id+"' ";		
		
	
		 String sql =" select f.userid , f.username , f.cateid ,f.catename, f.itemid  , f.catedirectory ,f.articlecontent ,f.articletitle , f.articleitd ,f.articletype ,f.creattime ,f.picaddress ,f.articleid , e.catename as catname ,e.catedirectory as cat  "             
				 
		+" from  article_cate  e  RIGHT  JOIN "
		 
		+"  (  select   a.cateid ,a.catename, a.itemid  , a.catedirectory ,b.articlecontent ,b.articletitle , b.articleitd ,b.articletype ,b.creattime ,b.picaddress  ,b.articleid ,c.userid ,c.username "
		 
		+  "    from  article_cate a ,article_content b ,admin_user c    where        b.userid=c.userid and a.cateid=b.cateid and  articleid='"+id+"' ) as f  "
		 
		+ "  on f.itemid = e.cateid  ";
		
		
		
		
		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println("artcile="+lst);
		return lst;
	}





	@Override
	public String ItemList(String item_directorie) {
		// TODO Auto-generated method stub
		String sql = "select item_template from article_item    where item_directorie='"+item_directorie+"'";		
		return  (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;
	}





	@Override
	public List ArticleItemCate(String item_directorie) {
		// TODO Auto-generated method stub
	//	String sql = "select *  from  article_cate a , article_item d  where    a.itemid=d.item_id    and a.scateid is null   and    d.item_directorie='"+item_directorie+"' ";		
		String sql = "select *  from  article_cate a , article_item d  where    a.itemid=d.item_id    and    d.item_directorie='"+item_directorie+"'  "
				+ " and scateid =(select n.cateid from  article_cate  n , article_item m    where   n.itemid=m.item_id    and    m.item_directorie='"+item_directorie+"'   and   n.catedirectory='3' )  order by logicorder";
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
//		System.out.println(lst);
		return lst;
	}





	@Override
	public List ItemAllArticle(String item_directorie) {
		// TODO Auto-generated method stub
		//String sql = "select *  from  article_cate a , article_item d   ,article_content c         where    a.itemid=d.item_id  and   a.cateid=c.cateid  and d.item_directorie='"+item_directorie+"' ";		
		
		//String sql = " select *    from  article_cate a    , article_item d    ,article_content  c   where   a.itemid=d.item_id   and  d.item_directorie='"+item_directorie+"'  and c.cateid =a.cateid ";
//		由于ariticle 的content 字段类型为 mediumtext  select *  导致查询很慢
		String sql = "select c.articletitle ,c.articleid,c.articleitd ,c.creattime ,c.picaddress ,a.catename ,a.catedirectory, a.cateid , a.pdir , c.articletype ,c.articleitd "
				+ "from  article_cate a    ,article_content  c   where    c.cateid =a.cateid  and a.itemid=(select item_id  FROM  article_item   where  item_directorie='"+item_directorie+"'  )";

		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}





	@Override
	public String ItemHtmlorDo(String item_directorie) {
		// TODO Auto-generated method stub
		String sql = "select item_html  from   article_item d        where     d.item_directorie='"+item_directorie+"' ";		
		String rs = (String)this.jdbcTemplate.queryForObject(sql, String.class);
		return rs;
	}





	@Override
	public List ArticleList() {
		// TODO Auto-generated method stub
//		String sql = "select *  from  article_cate a , article_item d   ,article_content c         where    a.itemid=d.item_id  and   a.cateid=c.cateid   ";	
		
		String sql = "	select a.* ,d.* ,c.adepict ,c.akeyword ,c.articleid ,c.articleitd ,c.articlesummary,c.articletitle ,c.articletype ,c.blogcateid ,"
				+ " c.cateid ,c.creattime ,c.origin ,c.picaddress ,c.topicid ,c.userid "
				+ " from  article_cate a , article_item d   ,article_content c , "
				+ " (select GROUP_CONCAT(articleid order by articleid desc) as ids from article_content  group by  cateid) as e "
				+ " where    a.itemid=d.item_id  and   a.cateid=c.cateid   and  find_in_set(c.articleid ,e.ids) between 1 and 10  order by c.articleid desc ";
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}





	@Override
	public String ItemCateName(String catedirectory) {
		// TODO Auto-generated method stub
		String sql = "select catename from article_cate    where catedirectory='"+catedirectory+"'";		
		return  (String)   jdbcTemplate.queryForObject(sql, java.lang.String.class) ;
	}





	
	
	@Override
	public PageList ArticleList(String catedirectory, int pageNum) {
		// TODO Auto-generated method stub
		List lst = null ;
		String sql = "select count(*)  from  article_cate a ,article_content b ,admin_user c  , article_item d  where    a.itemid=d.item_id  and    b.userid=c.userid and a.cateid=b.cateid and  catedirectory='"+catedirectory+"' ";		
		int totalRecord = jdbcTemplate.queryForInt(sql);
		
		String sqlsize = " select pagesize  from  article_cate   where catedirectory='"+catedirectory+"' ";		
		int pagesize = jdbcTemplate.queryForInt(sqlsize);

//		int pagesize = 25; // 每页显示多少条数 
		int pages = 0;   //总页数
		 if (totalRecord % pagesize == 0) {
	            pages = totalRecord / pagesize;
	        } else {
	            pages = totalRecord / pagesize + 1;
	        }
		
//		 String sqll = "select *  from  article_cate a ,article_content b ,admin_user c  , article_item d  where    a.itemid=d.item_id  and    b.userid=c.userid and a.cateid=b.cateid and  catedirectory='"+catedirectory+"' ";		
			
		 
		 
		 String sqll =" select f.username , f.cateid ,f.catename, f.itemid  , f.catedirectory ,f.articlecontent ,f.articletitle , f.articleitd ,f.articletype ,f.creattime ,f.picaddress ,f.articleid , e.catename as catname ,e.catedirectory as cat ,f.pdir "             
		 
		+" from  article_cate  e  RIGHT  JOIN "
		 
		+"  (  select  c.username , a.cateid ,a.catename, a.itemid  ,a.pdir , a.catedirectory ,b.articlecontent ,b.articletitle , b.articleitd ,b.articletype ,b.creattime ,b.picaddress  ,b.articleid  "
		 
		+  "    from  article_cate a ,article_content b ,admin_user c    where        b.userid=c.userid and a.cateid=b.cateid and  catedirectory='"+catedirectory+"' ) as f  "
		 
		+ "  on f.itemid = e.cateid  ";
		 
		 
		 
		 
	     //查询第page页的数据sql语句
	        if(pageNum<=1){
	            sqll+=" limit 0,"+pagesize;
	        }else{
	            sqll+=" limit "+((pageNum-1)*pagesize)+","+pagesize;
	        } 
//		  https://www.cnblogs.com/aeolian/p/9228907.html
	        System.out.println("pages=="+pages);
	        lst = jdbcTemplate.queryForList(sqll) ;
//	      //返回分页格式数据
	        PageList pl =new PageList();
	        pl.setPageNum(pageNum);//设置显示的当前页数
 
	        pl.setPages(pages);  //设置总页数
	        pl.setList(lst);   //设置当前页数据
	        pl.setTotalRecord(totalRecord);    //设置总记录数	        

	        return pl;
	}





	@Override
	public boolean HaveSubCate(String catedirectory) {
		// TODO Auto-generated method stub
		boolean have = false;
		String sql = "  select count(*)  FROM article_cate     where scateid=  (select cateid from article_cate  where  catedirectory='"+catedirectory+"')";		
		int num=	jdbcTemplate.queryForInt(sql);
		if(num>0){
			have =true ;
		}else{
			have =false ;
		}
		return have;
	}





	@Override
	public List ItemCateSub(String catedirectory) {
		// TODO Auto-generated method stub
		String sql = "  select *  FROM article_cate     where scateid=  (select cateid from article_cate  where  catedirectory='"+catedirectory+"')   order by logicorder";		
		return jdbcTemplate.queryForList(sql);
	}





	@Override
	public List ItemCateSubArticle(String catedirectory) {
		// TODO Auto-generated method stub
		String sql =  " select *  from   article_content  c  , article_cate a"
			+"	  where   a.cateid=c.cateid and   c.cateid  in (    select cateid from article_cate  as k  where  k.scateid   =      (select cateid from article_cate where  catedirectory='"+catedirectory+"'))"  ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println("re"+lst);
		return lst;
	}





	@Override
	public List SubCateArticleList(int id) {
		// TODO Auto-generated method stub
		String sql = "select *  from  article_cate a ,article_content b ,admin_user c   where      b.userid=c.userid and a.cateid=b.cateid and  articleid='"+id+"' ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println("artcile="+lst);
		return lst;
	}





	@Override
	public PageList SubCateArticleList(String catedirectory, int pageNum) {
		// TODO Auto-generated method stub
		List lst = null ;
		String sql = "select count(*)  from  article_cate a ,article_content b ,admin_user c    where       b.userid=c.userid and a.cateid=b.cateid and  catedirectory='"+catedirectory+"' ";		
		int totalRecord = jdbcTemplate.queryForInt(sql);
		
		
		String sqlsize = " select pagesize  from  article_cate   where catedirectory='"+catedirectory+"' ";		
		int pagesize = jdbcTemplate.queryForInt(sqlsize);

		
//		int pagesize = 25; // 每页显示多少条数 
		int pages = 0;   //总页数
		 if (totalRecord % pagesize == 0) {
	            pages = totalRecord / pagesize;
	        } else {
	            pages = totalRecord / pagesize + 1;
	        }
		
		 String sqll = "select *  from  article_cate a ,article_content b ,admin_user c    where     b.userid=c.userid and a.cateid=b.cateid and  catedirectory='"+catedirectory+"' ";		
			
	     //查询第page页的数据sql语句
	        if(pageNum<=1){
	            sqll+=" limit 0,"+pagesize;
	        }else{
	            sqll+=" limit "+((pageNum-1)*pagesize)+","+pagesize;
	        } 
//		  https://www.cnblogs.com/aeolian/p/9228907.html
	        System.out.println("pages=="+pages);
	        lst = jdbcTemplate.queryForList(sqll) ;
//	      //返回分页格式数据
	        PageList pl =new PageList();
	        pl.setPageNum(pageNum);//设置显示的当前页数
 
	        pl.setPages(pages);  //设置总页数
	        pl.setList(lst);   //设置当前页数据
	        pl.setTotalRecord(totalRecord);    //设置总记录数	        

	        return pl;
	}





	@Override
	public String ItemName(String item_directorie) {
		// TODO Auto-generated method stub
		
	String sql = " select item_name from article_item  where "  ;
		
		return null;
	}





	@Override
	public Item GetItem(String item_directorie) {
		// TODO Auto-generated method stub
		String sql = "select *  from article_item  where  item_directorie='"+item_directorie+"'";	
		System.out.println("SQl"+sql);
		Object item= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Item>(Item.class)) ;
		return (Item) item ;
	}





	@Override
	public List ItemCate(String item_directorie) {
		// TODO Auto-generated method stub
		String sql = "select *  from  article_cate a   where  a.catetype not in ('3','9')  and     a.itemid= (   select b.item_id  from  article_item  b  where    b.item_directorie='"+item_directorie+"') ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println("artcile="+lst);
		return lst;
	}





	@Override
	public int CatePage(String catedirectory, int pagesize) {
		// TODO Auto-generated method stub
		String sql = "select count(*)  from  article_cate a ,article_content b ,admin_user c    where       b.userid=c.userid and a.cateid=b.cateid and  catedirectory='"+catedirectory+"' ";		
		int totalRecord = jdbcTemplate.queryForInt(sql);
		int pages = 0;   //总页数
		 if (totalRecord % pagesize == 0) {
	            pages = totalRecord / pagesize;
	        } else {
	            pages = totalRecord / pagesize + 1;
	        }
		return pages;
	}





	@Override
	public List ItemCateArticleHtml(String item_directorie) {
		// TODO Auto-generated method stub
		String sql = "select c.articleid ,a.catedirectory ,a.pdir "
					+"from  article_cate a  ,article_content c  "
					+ "where  c.cateid =a.cateid  and a.itemid=(select item_id  FROM  article_item   where  item_directorie='"+item_directorie+"' )";
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);;
		return lst;
	}





	@Override
	public List ItemArticleUserBlog(int articleid ,String item_directorie) {
		// TODO Auto-generated method stub
	String sql= "Select a.articleid ,a.articletitle ,b.catedirectory ,b.pdir from    article_content a  ,article_cate b"
			+ "  where blogcateid = (select blogcateid  from  article_content   where articleid ="+articleid+") and a.cateid=b.cateid "
					+ " and  b.itemid=(select item_id  from article_item where item_directorie='"+item_directorie+"')"
					+ " LIMIT 30 " ;
	List lst = new ArrayList();
	lst = jdbcTemplate.queryForList(sql);;
	return lst;
	}





	@Override
	public List FuLi() {
		// TODO Auto-generated method stub
		String sql= "Select a.articleid ,a.articletitle ,b.catedirectory ,c.item_directorie  from    article_content a  ,article_cate b  , article_item   c "
				+ " where  b.cateid=a.cateid  and      b.itemid=c.item_id      and articletype='100'" ;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);;
		return lst;
	}





	@Override
	public List TopicList() {
		// TODO Auto-generated method stub
		String sql = "select * from article_topic  a ,admin_user b ,  article_item c  where c.item_id=a.itemid  and     a.userid=b.userid  order by a.itemid ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}





	@Override
	public int SaveItem(Item item) {
		// TODO Auto-generated method stub
		String sql="  insert into article_item   (item_name,item_directorie,item_description,item_template,keyword,depict,item_userid,item_time) values ('"
		+item.getItem_name()+"','"+item.getItem_directorie()+"','"+item.getItem_description()+"','"+item.getItem_template()+"','"+item.getKeyword()+"',"
				+ "'"+item.getDepict()+"','"+item.getItem_userid()+"','"+item.getItem_time()+"')   ; ";
		System.out.println(sql);
		int  i =jdbcTemplate.update(sql);
		return i;
	}





	@Override
	public int AlterItem(Item item) {
		// TODO Auto-generated method stub
		
		String sql="  update   article_item  set    item_name ='"+item.getItem_name()+"' , item_directorie='"+item.getItem_directorie()+"',"
				+ "item_description='"+item.getItem_description()+"',item_template='"+item.getItem_template()+"',keyword='"+item.getKeyword()+"',"
						+ "depict='"+item.getDepict()+"'   where item_id='"+item.getItem_id()+"'  " ;

		int  i =jdbcTemplate.update(sql);
		return i;
	}





	@Override
	public Item GetItemById(int item_id) {
		// TODO Auto-generated method stub
		String sql = "select *  from article_item  where  item_id='"+item_id+"'";	
		System.out.println("SQl"+sql);
		Object item= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Item>(Item.class)) ;
		return (Item) item ;
	}





	@Override
	public int GetPreviousId(String catedirectory, int id) {
		// TODO Auto-generated method stub
		int rs=0;
		String sql=" select  articleid from article_content where  cateid=(select cateid  from article_cate  where   catedirectory='"+catedirectory+"')  and articleid <"+id+"  order by articleid  desc  limit 1";
		try {
			rs = jdbcTemplate.queryForObject(sql, Integer.class);
		} catch (DataAccessException e) {
			rs = 0;
		}
		return rs;
	}



	@Override
	public int GetNextId(String catedirectory, int id) {
		// TODO Auto-generated method stub
		int rs=0;
		String sql="select  articleid from article_content where  cateid=(select cateid  from article_cate  where   catedirectory='"+catedirectory+"')  and articleid >"+id+"  order by articleid  asc  limit 1"  ;
		try{	
			rs =jdbcTemplate.queryForObject(sql,Integer.class);  
		}catch(DataAccessException e){	
			rs=0;
		}
		return rs;
	}





	@Override
	public List ItemListShow() {
		// TODO Auto-generated method stub
		
		// TODO Auto-generated method stub
		String sql = "select * from article_item  a ,admin_user b  where a.item_userid=b.userid   and  a.isshow='1' ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}





	@Override
	public List RecommendArticle() {
		// TODO Auto-generated method stub
		String sql = "	select a.* ,d.* ,c.adepict ,c.akeyword ,c.articleid ,c.articleitd ,c.articlesummary,c.articletitle ,c.articletype ,c.blogcateid ,"
				+ " c.cateid ,c.creattime ,c.origin ,c.picaddress ,c.topicid ,c.userid "
				+ " from  article_cate a , article_item d   ,article_content c  "
				+ " where    a.itemid=d.item_id  and   a.cateid=c.cateid   and    c.articletype!=1";
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
		
		
		
		
	}

}
