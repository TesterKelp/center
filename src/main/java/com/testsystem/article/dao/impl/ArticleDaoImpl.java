package com.testsystem.article.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.vo.Member;
import com.testsystem.article.dao.ArticleDao;
import com.testsystem.article.vo.Article;
import com.testsystem.backstage.vo.PageList;
@Repository
public class ArticleDaoImpl implements ArticleDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;

	
	
	public List GetArticleList() {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select * from article_content ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List GetMyArticleList(int userid) {
		// TODO Auto-generated method stub
		System.out.println("dao");
//		String sql = "select * from article_content a, article_cate b ��  where  a.cateid=b.cateid and a.userid="+userid ;	
		String sql = "select * from article_content a, blog_cate b ,admin_user  u  where   a.userid=u.userid and   a.blogcateid=b.blogcateid and a.userid="+userid ;	
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List ArticleList() {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select a.articletitle , b.username,b.realname,a.creattime,a.articleid ,a.articlecontent ,c.catename ,d.item_directorie ,c.catedirectory ,a.picaddress ,a.articleitd "
				+ "from article_content a,admin_user b,article_cate c ,article_item d  "
				+ "where   d.item_id =c.itemid  and  c.cateid= a.cateid   and  a.userid = b.userid  and c.catetype=0";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List GetArticleById(int articleid) {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select a.articletitle , b.username,b.userid,a.creattime,a.articleid ,a.articlecontent  ,a.articleitd ,a.blogcateid  ,a.cateid ,a.topicid ,c.catename"
				+ " from article_content a,admin_user b ,article_cate c"
				+ " where  c.cateid=a.cateid and  a.userid = b.userid and a.articleid= " +articleid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List ArticleListByCate(int cateid) {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select a.articletitle , b.username,a.creattime,a.articleid ,a.articlecontent ,c.catename from article_content a,admin_user b ,article_cate c where    c.cateid= a.cateid   and  a.userid = b.userid  and a.cateid="+cateid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List ArticleSearch(String keyword) {
		// TODO Auto-generated method stub
		
		String sql = "select a.articletitle , b.username,a.creattime,a.articleid ,a.articlecontent ,c.catename from article_content a,admin_user b ,article_cate c where    c.cateid= a.cateid   and  a.userid = b.userid  "+
		"and ( a.articletitle like '%"+keyword+"%'    or  a.articlecontent like '%"+keyword+"%' )";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List ArticleByTopicId(int topicid) {
		// TODO Auto-generated method stub
		
//		String sql = " select d.articletitle , d.username,d.creattime,d.articleid ,d.articlecontent ,d.catename ,d.catedirectory ,e.catedirectory as cat "
//		 + " from  article_cate  e  RIGHT  JOIN "
//		 + "(select a.articletitle , b.username,a.creattime,a.articleid ,a.articlecontent ,c.itemid,c.catename ,c.catedirectory from article_content a,admin_user b ,article_cate c " 
//		 + "  where c.cateid= a.cateid and  a.userid = b.userid  and a.topicid="+topicid+" ) as d "
//		 + "on d.itemid =e.cateid" ;
		

		String sql = "  select a.articletitle ,a.topicid , b.username,a.creattime,a.articleid ,a.articlecontent ,c.itemid,c.catename ,c.catedirectory ,c.pdir from article_content a,admin_user b ,article_cate c "
		  +" where c.cateid= a.cateid and  a.userid = b.userid  and a.topicid="+topicid ;

		
		System.out.println(sql);
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List ArticleHiddenList() {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select a.articletitle , b.username,a.creattime,a.articleid ,a.articlecontent ,c.catename  from article_content a,admin_user b,article_cate c   where     c.cateid= a.cateid   and  a.userid = b.userid  and c.catetype=1";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	@Override
	public PageList ArticleList(int pageNo,int pagesize1) {
		// TODO Auto-generated method stub
		
		List lst = null ;
		String sql = "select count(*) "
				+ "from article_content a,admin_user b,article_cate c ,article_item d  "
				+ "where   d.item_id =c.itemid  and  c.cateid= a.cateid   and  a.userid = b.userid  ";	
		int totalRecord = jdbcTemplate.queryForInt(sql);
//		int pagesize = 25; // 每页显示多少条数 
		int pagesize = pagesize1 ;
		int pages = 0;   //总页数
		 if (totalRecord % pagesize == 0) {
	            pages = totalRecord / pagesize;
	        } else {
	            pages = totalRecord / pagesize + 1;
	        }
			String sq = "select a.articletitle , b.username,b.realname,a.creattime,a.articleid ,a.articlecontent ,c.catename ,d.item_directorie ,c.catedirectory ,a.picaddress ,a.articleitd ,a.articletype "
					+ "from article_content a,admin_user b,article_cate c ,article_item d  "
					+ "where   d.item_id =c.itemid  and  c.cateid= a.cateid   and  a.userid = b.userid  ";	
	     //查询第page页的数据sql语句
	        if(pageNo<=1){
	            sq+=" limit 0,"+pagesize;
	        }else{
	            sq+=" limit "+((pageNo-1)*pagesize)+","+pagesize;
	        } 
//		  https://www.cnblogs.com/aeolian/p/9228907.html
	        System.out.println("pages=="+pages);
	        lst = jdbcTemplate.queryForList(sq) ;
//	      //返回分页格式数据
	        PageList pl =new PageList();
	        pl.setPageNum(pageNo);//设置显示的当前页数
 
	        pl.setPages(pages);  //设置总页数
	        pl.setList(lst);   //设置当前页数据
	        pl.setTotalRecord(totalRecord);    //设置总记录数	        
	        return pl;
	}

	@Override
	public PageList GetMyArticleList(int userid, int pageNo, int pagesize1) {
		// TODO Auto-generated method stub
		List lst = null ;
	
		
		String sql = "select count(*) "
				+ "from article_content a, blog_cate b ,admin_user  u  "
				+ "where   a.userid=u.userid and   a.blogcateid=b.blogcateid and a.userid="+userid ;	

		
		int totalRecord = jdbcTemplate.queryForInt(sql);
//		int pagesize = 25; // 每页显示多少条数 
		int pagesize = pagesize1 ;
		int pages = 0;   //总页数
		 if (totalRecord % pagesize == 0) {
	            pages = totalRecord / pagesize;
	        } else {
	            pages = totalRecord / pagesize + 1;
	        }

			String sq = "select a.articletitle ,a.creattime,a.articleid ,a.articlecontent ,a.picaddress ,a.articleitd ,b.blogcatename ,b.blogcateid ,u.userid , u.username,u.realname ,d.cateid ,d.catename"
					+ " from article_content a , blog_cate b , admin_user  u ,article_cate d"
					+ " where   a.userid=u.userid and   d.cateid=a.cateid  and  a.blogcateid=b.blogcateid and a.userid="+userid +" order by a.articleid desc " ;
			
			//查询第page页的数据sql语句
	        if(pageNo<=1){
	            sq+=" limit 0,"+pagesize;
	        }else{
	            sq+=" limit "+((pageNo-1)*pagesize)+","+pagesize;
	        } 
//		  https://www.cnblogs.com/aeolian/p/9228907.html
	        System.out.println("pages=="+pages);
	        lst = jdbcTemplate.queryForList(sq) ;
//	      //返回分页格式数据
	        PageList pl =new PageList();
	        pl.setPageNum(pageNo);//设置显示的当前页数
 
	        pl.setPages(pages);  //设置总页数
	        pl.setList(lst);   //设置当前页数据
	        pl.setTotalRecord(totalRecord);    //设置总记录数	        
	        return pl;
	}

	@Override
	public int UpdateArticleType(int articleid, int articleType) {
		// TODO Auto-generated method stub
		String sql="update article_content  set articletype='"+articleType+"'  where  articleid='"+articleid+"'" ;
		return jdbcTemplate.update(sql);
	}

	@Override
	public void SetArticlePic(int articleid, String pic_src) {
		// TODO Auto-generated method stub
		
		String sql="update article_content  set picaddress='"+pic_src+"'  where  articleid='"+articleid+"'" ;
		jdbcTemplate.update(sql);
		
	}

	@Override
	public Article ArticleById(int articleid) {
		// TODO Auto-generated method stub
		
		String sql = "select * "
				+ " from article_content   "
				+ " where  articleid='"+articleid+"'";	
		Object article= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Article>(Article.class)) ;
		return (Article) article ;
	}

	@Override
	public List SearchWordRsList(String word, String item) {
		// TODO Auto-generated method stub
		
		String sql="  select a.articleid  ,a.articletitle , a.creattime , c.catedirectory,c.pdir from article_content  a,  article_item  b   ,article_cate c    "
        + "where  c.cateid=a.cateid  and c.itemid =b.item_id  and  b.item_directorie='"+item+"'  and  a.articletitle like '%"+word+"%'   "
		+	"	UNION  "
		+	"select a.articleid  ,a.articletitle , a.creattime , c.catedirectory,c.pdir from article_content  a,  article_item  b   ,article_cate c    "
		+	" where  c.cateid=a.cateid  and c.itemid =b.item_id  and  b.item_directorie='"+item+"'  and  a.articlecontent like '%"+word+"%'  ";
		return jdbcTemplate.queryForList(sql);
	}
	
	
	
	
}
