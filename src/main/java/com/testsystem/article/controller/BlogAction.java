package com.testsystem.article.controller;

import java.io.IOException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.utils.UserUtil;
import com.testsystem.admin.vo.Member;
import com.testsystem.article.service.ArticleService;
import com.testsystem.article.service.BlogCateService;
import com.testsystem.article.service.BlogService;
import com.testsystem.article.service.CateService;
import com.testsystem.article.service.TopicService;
import com.testsystem.article.util.GetPicAddress;
import com.testsystem.article.util.HtmlGenerator;
import com.testsystem.article.vo.Article;
import com.testsystem.article.vo.Blog;
import com.testsystem.article.vo.BlogInfo;
import com.testsystem.article.vo.BlogCate;
import com.testsystem.article.vo.Comment;
import com.testsystem.backstage.service.TagService;
import com.testsystem.backstage.vo.PageList;
import com.testsystem.backstage.vo.Tag;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.Page;
import com.testsystem.helper.U;

import net.sf.json.JSONObject;
@Controller
public class BlogAction {

	@Autowired
	private BlogCateService blogCateService;
	@Autowired
	private CateService cateService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private TopicService topicService;
	@Autowired
	private BlogService blogService;
	@Autowired
	private TagService tagService;
	
	@Autowired
	private    UserService     userService ;
	
	private List<?> moduleList;
	private List<?> infoList ;
	private List<?> blogList ;
	private List<?> menuList ;
	private List<?> commentList ;
	private List<?> blogcatelist ;
	private List<?> catelist ;
	private List<?> blogtype ;
	private List<?>topiclist;
	Comment comment =new Comment();
	Blog blog =new Blog();
	String template ="";
	
	
	
	@RequestMapping(value ="/blog/MyBlog.do", method = RequestMethod.GET)
	public String MyBlog(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid ;		
		int islogin;
		userid =U.GetUserId(request);
		if(userid == 0) {
			islogin  =0 ; 
			return "module/usercenter/login";
		}else{
			islogin  =1; 
			String ur= "blog/"+userid+".do" ;
			return "redirect:/"+ur ;  
		}
	}
	@RequestMapping(value ="/module/share/BlogIndex.do", method = RequestMethod.GET)
	public String BlogIndex(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid = Integer.parseInt(request.getParameter("userid"));
		moduleList = blogCateService.BlogCateByUserId(userid);
		String html="<li><a href='../blog/"+userid+".html'>������ҳ</a></li>" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html+" <li> <a href='"+userid+"/"+ob.getString("blogcateid")+".html'>"+ob.getString("blogcatename")+"</a></li>";
}
		infoList = blogService.BlogInfo(userid);
		 if(infoList.size()>0){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(infoList).get(0);
		blogList = blogService.BlogList(userid);
		map.put("introduce", ob.getString("introduce"));
		map.put("username", ob.getString("username"));
		map.put("useravatar", ob.getString("useravatar"));
		map.put("notice", ob.getString("notice"));
		String template =ob.getString("template");
		map.put("lst", blogList);
		map.put("url", "../blog/"+userid+"/content");
		System.out.println(moduleList);
		System.out.println(infoList);
		System.out.println(blogList);
		System.out.println(html);
		map.put("menu",html);
		return "blog/t1/index";
		 }else{
		return "blog/t1/no" ;
		 }
	}
	
	
	@RequestMapping(value ="/module/share/BlogCate.do", method = RequestMethod.GET)
	public String BlogCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid = Integer.parseInt(request.getParameter("userid"));
		int cateid = Integer.parseInt(request.getParameter("cateid"));
		moduleList = blogCateService.BlogCateByUserId(userid);
		String html="<li><a href='../../blog/"+userid+".html'>������ҳ</a></li>" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html+" <li> <a href='"+ob.getString("blogcateid")+".html'>"+ob.getString("blogcatename")+"</a></li>";
}
		infoList = blogService.BlogInfo(userid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(infoList).get(0);
		map.put("introduce", ob.getString("introduce"));
		map.put("username", ob.getString("username"));
		map.put("useravatar", ob.getString("useravatar"));
		map.put("notice", ob.getString("notice"));
		map.put("logo", ob.getString("logo"));
		String template =ob.getString("template");
		map.put("url", "../../blog/"+userid+"/content");
		blogList = blogService.BlogListByCate(userid, cateid);
		map.put("lst", blogList);
		System.out.println(moduleList);
		System.out.println(infoList);
		System.out.println(blogList);
		System.out.println(html);
		map.put("menu",html);
		return "blog/t1/cate";
	}
	
	
	@RequestMapping(value ="/module/share/BlogContent.do", method = RequestMethod.GET)
	public String BlogDetail(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid = Integer.parseInt(request.getParameter("userid"));
		int blogid = Integer.parseInt(request.getParameter("blogid"));
	
		infoList = blogService.BlogInfo(userid);
		JSONObject info = (JSONObject) JsonAndString.ListToJsonArray(infoList).get(0);
		map.put("introduce", info.getString("introduce"));
		map.put("username", info.getString("username"));
		map.put("useravatar", info.getString("useravatar"));
		map.put("notice", info.getString("notice"));
		map.put("logo", info.getString("logo"));
		map.put("createtime", info.getString("creattime"));
		map.put("catename", info.getString("catename"));
		String template =info.getString("template");
	
		System.out.println("jsonstr1111");
		moduleList = articleService.GetArticleById(blogid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		System.out.println("+++++++++++++++"+ob.getString("articletitle"));
		request.setAttribute("title", ob.getString("articletitle"));
		map.put("title", ob.getString("articletitle"));
		map.put("content",ob.getString("articlecontent"));
		map.put("username",ob.getString("username"));
		map.put("creattime",ob.getString("creattime"));
		map.put("articleid",ob.getString("articleid"));
		menuList = blogCateService.BlogCateByUserId(userid);
		String html="<li><a href='../../../blog/"+userid+".html'>������ҳ</a></li>" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(menuList).size(); i++){
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(menuList).get(i);
			html = html+" <li> <a href='../"+oc.getString("blogcateid")+".html'>"+oc.getString("blogcatename")+"</a></li>";
}
		map.put("menu",html);	
		return "blog/t1/content";
	}
	
	
//	@RequestMapping(value ="/module/share/SaveComment1321.do", method = RequestMethod.POST)
//	public void  SaveComment(ModelMap map, HttpServletResponse response,
//			HttpServletRequest request) throws IOException{
//		String msg="ok";
//		int articleid = Integer.parseInt(request.getParameter("articleid"));
//		String content =request.getParameter("content");
//		comment.setArticleid(articleid);
//		comment.setContent(content);
//		Format format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        System.out.println(format.format(new Date()));
//        comment.setCommenttime(format.format(new Date()));
//        if(UserUtil.getCurrentUserinfo() != null){  
//        	  System.out.println("discuz id :"+UserUtil.getCurrentUserinfo().getUserid());
//              comment.setUserid(UserUtil.getCurrentUserinfo().getUserid());
//              blogService.SaveComment(comment);
//		}else{
//			 msg ="login";
//		}
//		response.getWriter().write(msg);
//		response.getWriter().flush();
//	}
	
	
	
//	@RequestMapping(value ="/module/share/Sav22eComment.do", method = RequestMethod.POST)
//	public void SaveComm222ent(ModelMap map, HttpServletResponse response,
//			HttpServletRequest request) throws IOException{
//		String msg="save category succfully !";
//		int articleid = Integer.parseInt(request.getParameter("articleid"));
//		String content =request.getParameter("content");
//		comment.setArticleid(articleid);
//		comment.setContent(content);
//		Format format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        System.out.println(format.format(new Date()));
//        comment.setCommenttime(format.format(new Date()));
//        if(UserUtil.getCurrentUserinfo() != null){  
//        	  System.out.println("discuz id :"+UserUtil.getCurrentUserinfo().getUserid());
//              comment.setUserid(UserUtil.getCurrentUserinfo().getUserid());
//              blogService.SaveComment(comment);
//		}else{
//			 msg ="plase   login  system !";
//		}
//		response.getWriter().write("{\"msg\":\""+msg+"\"}");
//		response.getWriter().flush();
//	}
//	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

//	@RequestMapping(value ="/module/share/GetComment1111.do", method = RequestMethod.POST)
//	public void SaveComment11(ModelMap map, HttpServletResponse response,
//			HttpServletRequest request) throws IOException{
//		int articleid = Integer.parseInt(request.getParameter("articleid"));
//		commentList=  blogService.GetComment(articleid);
//		String html="";
//		for (int i = 0; i <JsonAndString.ListToJsonArray(commentList).size(); i++){
//			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(commentList).get(i);
//			html = html+"#"+(i+1)+"("+oc.getString("username")+")<Br>"+oc.getString("content")+"<hr>";
//}
//        System.out.println(html);
//		String msg="save category succfully !";
//		response.getWriter().write(html);
//		response.getWriter().flush();
//
//	}
	
	
	
	
	/**
	 * ��Ӳ���
	 * @param map
	 * @param response
	 * @param request
	 * @throws IOException
	 */
	
	@RequestMapping(value ="/module/share/AddBlog.do", method = RequestMethod.POST)
	public void AddBlog(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{

		int  userid =U.GetUserId(request);
		int cateid = Integer.parseInt(request.getParameter("articlecateid"));
		int topicid = Integer.parseInt(request.getParameter("topicid"));
		int blogcateid = Integer.parseInt(request.getParameter("cateid"));
		
		String ids =request.getParameter("ids");
		String keys =request.getParameter("keys");
		
		String classpath = getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");		
	
		
		
		
		String articlecontent =request.getParameter("content");
		articlecontent = articlecontent.replace("\\", "\\\\");
	//	String  picaddress= GetPicAddress.GetPicId(articlecontent);
		String  picaddress= GetPicAddress.GetPicId(articlecontent, webappRoot);
		
		System.out.println(""+GetPicAddress.delHTMLTag(articlecontent));
		String  inn=	GetPicAddress.delHTMLTag(articlecontent);
		String articleitd ;
		if(inn.length()<=300){
			articleitd=inn.substring(0, inn.length());
		}else{
			articleitd=inn.substring(0, 300);
		}
		

		System.out.println("fffffffffffffffffffffffffffffffffffffffffffffffffff"+articleitd);
		blog.setArticleitd(articleitd);
	
		String articletitle =request.getParameter("title");
		articletitle=articletitle.replaceAll("'", "''");
		Format format = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(format.format(new Date()));
        
        blog.setPicaddress(picaddress);
        blog.setArticletitle(articletitle);
        blog.setBlogcateid(blogcateid);
        blog.setArticlecontent(articlecontent);
        
        System.out.println("articlecontent="+articlecontent);
        
        blog.setCreatetime(format.format(new Date()));
        blog.setUserid(userid);
        blog.setArticletype(1);
        blog.setCateid(cateid);
        blog.setTopicid(topicid);
//        blogService.AddBlog(blog);
        int id =blogService.AddBlogReutrnBlogId(blog);
        
       com.testsystem.article.vo.Cate cate  = cateService.CateById(cateid);
       System.out.println("项目id"+cate.getItemid());
         
        if(StringUtils.isEmpty(keys)){
             System.out.println("自定义为空标签为空"+keys);
        }else{
        	
        	System.out.println("自定义标签为"+keys);
        	keys=keys.substring(0,keys.length()-1);
        	System.out.println("自定义标签为"+keys);
        	String[] ky =keys.split(",") ;
        	System.out.println("自定义标签为============="+ky.length);
         	for(int i=0;i<ky.length;i++){
         		System.out.println("ky["+i+"]============="+ky[i]);
        	Tag tag =	tagService.CreateTagReturId(ky[i],cate.getItemid()) ;
        	tagService.AddTagidToOwer(userid, tag.getTagid());
        	tagService.AddTagidToArticle(tag.getTagid(), id);
        	}
        }
        
		if (StringUtils.isEmpty(ids)) {
		} else {
			System.out.println("标签为"+ids);
			ids = ids.substring(0, ids.length() - 1);
			String[] ds = ids.split(",");
			for (int i = 0; i < ds.length; i++) {
				int tagid =Integer.parseInt(ds[i]);
				tagService.AddTagidToArticle(tagid, id);
			}
		}

		String msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/share/SetBlogRec.do", method = RequestMethod.POST)
	public void setBlogrec(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid =UserUtil.getCurrentUserinfo().getUserid();
		int blogid = Integer.parseInt(request.getParameter("blogid"));
		blogService.SetBlogRec(userid, blogid, 2);
		String msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	@RequestMapping(value ="/module/share/CancelBlogRec.do", method = RequestMethod.POST)
	public void CancelBlogrec(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid =UserUtil.getCurrentUserinfo().getUserid();
		int blogid = Integer.parseInt(request.getParameter("blogid"));
		blogService.SetBlogRec(userid, blogid, 1);
		String msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	

	
//---------------------------------------------------------------------------------------------
//	������ҳ  http://192.168.1.103:8080/defectsystem/2/
//	http://192.168.1.103:8080/defectsystem/blog/Blog.do?userid=2
//	http://192.168.1.105:8080/defectsystem/blog/Blog.do?userid=2
	
	@RequestMapping(value ="blog/Blog.do", method = RequestMethod.GET)
	public String Index(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid = Integer.parseInt(request.getParameter("userid"));
		moduleList = blogCateService.BlogCateByUserId(userid); //  this user  blogcate
		String html="<li><a href='../blog/"+userid+".html'>������ҳ</a></li>" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html+" <li> <a href='"+userid+"/"+ob.getString("blogcateid")+".html'>"+ob.getString("blogcatename")+"</a></li>";
}
		infoList = blogService.BlogInfo(userid);  // this  user bloginfo
		blogtype =blogService.BlogListByArticleType(userid, 2);
		 if(infoList.size()>0){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(infoList).get(0);
		map.put("introduce", ob.getString("introduce"));
		map.put("username", ob.getString("username"));
		map.put("useravatar", ob.getString("useravatar"));
		map.put("notice", ob.getString("notice"));
		map.put("logo", ob.getString("logo"));
		map.put("blogtime", ob.getString("blogtime"));
		template =ob.getString("template");
		blogList = blogService.BlogList(userid);//  this user  all  article 
		map.put("lst", blogList);
		map.put("ldt", moduleList);
		map.put("ltt", blogtype) ;
		map.put("url", "../blog/"+userid+"/content");
		System.out.println(moduleList);
		System.out.println(infoList);
		System.out.println(blogList);
		System.out.println(html);
		int islogin;
		if(UserUtil.getCurrentUser() == null) {
			islogin  =0 ; 
		}else{
			islogin  =1; 
		}
		map.put("islogin",islogin);
		map.put("menu",html);
		map.put("userid", userid);
		topiclist =topicService.GetTopicSelect(userid);
		map.put("topiclist",topiclist);
		
		return "blog/"+template+"/index";
		 }else{
		return "blog/"+template+"/no"; 
		 }
	}
	
	
	
	
	
	@RequestMapping(value ="/blog/{userid}.do", method = RequestMethod.GET)
	public String GedddddtTrasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable int userid) throws IOException{	
		menuList = blogCateService.BlogCateByUserId(userid); //  this user  blogcate
		Member member =userService.GetMemberByUserId(userid);
		BlogInfo blogInfo = blogService.GetBlogInfoByUserId(userid);	
		blogtype =blogService.BlogListByArticleType(userid, 2);
		
		
		List tagLst=tagService.MyTag(userid);
		map.put("tagLst", tagLst);
		
		 if(blogInfo.getUserid()!=0){
		template =blogInfo.getTemplate() ;
		blogList = blogService.BlogList(userid);//  this user  all  article 
		map.put("lst", blogList);
		map.put("ldt", menuList);
		map.put("ltt", blogtype) ;
		map.put("blogInfo", blogInfo);
		map.put("member", member);
	

		int islogin;
		if(UserUtil.getCurrentUser() == null) {
			islogin  =0 ; 
		}else{
			islogin  =1; 
		}
		map.put("islogin",islogin);
		topiclist =topicService.GetTopicSelect(userid);
		map.put("topiclist",topiclist);
		
		return "blog/"+template+"/index";
		 }else{
		return "blog/"+template+"/no"; 
		 }
	}
	
	
	
	
	/**
	 * ���ͷ��
	 * @param map
	 * @param response
	 * @param request
	 * @return
	 * @throws IOException
	 */
//	http://192.168.1.103:8080/defectsystem/blog/Cate.do?userid=2&&cateid=1&&pageno=1
//	http://192.168.1.103:8080/defectsystem/2/2/1/
	@RequestMapping(value ="blog/Cate.do", method = RequestMethod.GET)
	public String Cate(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
		int userid = Integer.parseInt(request.getParameter("userid"));
		int cateid = Integer.parseInt(request.getParameter("cateid"));
		int pagenum =  Integer.parseInt(request.getParameter("pageno"));
		menuList = blogCateService.BlogCateByUserId(userid);
		moduleList = blogService.BlogListByCate(userid, cateid);
	String catename= blogCateService.BlogCateName(cateid);
		infoList = blogService.BlogInfo(userid);
		JSONObject info = (JSONObject) JsonAndString.ListToJsonArray(infoList).get(0);
		map.put("introduce", info.getString("introduce"));
		map.put("username", info.getString("username"));
		map.put("useravatar", info.getString("useravatar"));
		map.put("notice", info.getString("notice"));
		map.put("logo", info.getString("logo"));
		map.put("blogtime", info.getString("blogtime"));
		 template = info.getString("template");
		map.put("ldt", menuList);
		map.put("cl", moduleList);
		map.put("userid", userid);
		map.put("blogcateid", cateid);
		map.put("blogcatename", catename);
		blogtype =blogService.BlogListByArticleType(userid, 2);
		map.put("ltt", blogtype) ;
		return "blog/"+template+"/cate" ;
	}
	
	@RequestMapping(value ="/blog/{userid}/{cateid}/{pagenum}.do", method = RequestMethod.GET)
	public String Gedddd3dtTrasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable int userid,@PathVariable int cateid,@PathVariable int pagenum) throws IOException{	
		
		Member member =userService.GetMemberByUserId(userid);
		BlogInfo blogInfo = blogService.GetBlogInfoByUserId(userid);	
		BlogCate blogCate = blogCateService.GetBlogCateById(cateid);
		
		map.put("blogInfo", blogInfo);
		map.put("member", member);
		map.put("blogCate", blogCate);
		
		List tagLst=tagService.MyTag(userid);
		map.put("tagLst", tagLst);
		
		Page ls ;
		int pagesize=15 ;
		ls=blogService.BologListByCate(userid, cateid, pagesize, pagenum);
		map.put("TotalRecord",ls.getTotalRecord());
	    map.put("TotalPage",ls.getTotalPage());
	    map.put("pageNum",pagenum);
	    map.put("lst",ls.getList());
	    
		menuList = blogCateService.BlogCateByUserId(userid);
		moduleList = blogService.BlogListByCate(userid, cateid);

		template = blogInfo.getTemplate();
		map.put("ldt", menuList);
		map.put("cl", moduleList);
		
		topiclist =topicService.GetTopicSelect(userid);
		map.put("topiclist",topiclist);
		
		blogtype =blogService.BlogListByArticleType(userid, 2);
		map.put("ltt", blogtype) ;
		return "blog/"+template+"/cate" ;
	}
	
	
	@RequestMapping(value ="/blog/{userid}/Search.do", method = RequestMethod.POST)
	public String blogsearch(ModelMap map, HttpServletResponse response, HttpServletRequest request,@PathVariable int userid) throws IOException{
		
		Member member =userService.GetMemberByUserId(userid);
		BlogInfo blogInfo = blogService.GetBlogInfoByUserId(userid);	
		map.put("blogInfo", blogInfo);
		map.put("member", member);

		String   keyword  = request.getParameter("search");
		System.out.println(keyword+"keywordkeywordkeyword");
		menuList = blogCateService.BlogCateByUserId(userid);
		moduleList = blogService.BlogSearch(userid, keyword);
		
//		infoList = blogService.BlogInfo(userid);
//		JSONObject info = (JSONObject) JsonAndString.ListToJsonArray(infoList).get(0);
//		map.put("introduce", info.getString("introduce"));
//		map.put("username", info.getString("username"));
//		map.put("useravatar", info.getString("useravatar"));
//		map.put("notice", info.getString("notice"));
//		map.put("blogtime", info.getString("blogtime"));
		
		 template = blogInfo.getTemplate() ;
		map.put("ldt", menuList);
		map.put("cl", moduleList);
		map.put("userid", userid);
		blogtype =blogService.BlogListByArticleType(userid, 2);
		map.put("ltt", blogtype) ;
		return "blog/"+template+"/Search" ;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * ��������ҳ
	 * @param map
	 * @param response
	 * @param request
	 * @return
	 * @throws IOException
	 */

//	http://192.168.1.105:8080/defectsystem/blog/Content.do?userid=2&&blogid=51
	@RequestMapping(value ="blog/Content.do", method = RequestMethod.GET)
	public String Content(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
		System.out.println("jsonstr1111");
		String name ="";
		if(UserUtil.getCurrentUser() != null) {		
			name =	UserUtil.getCurrentUserinfo().getUsername();
			}
		int userid = Integer.parseInt(request.getParameter("userid"));
		int blogid = Integer.parseInt(request.getParameter("blogid"));
		infoList = blogService.BlogInfo(userid);
		JSONObject info = (JSONObject) JsonAndString.ListToJsonArray(infoList).get(0);
		map.put("introduce", info.getString("introduce"));
		map.put("username", info.getString("username"));
		map.put("useravatar", info.getString("useravatar"));
		map.put("notice", info.getString("notice"));
		map.put("blogtime", info.getString("blogtime"));
		String template =info.getString("template");
		System.out.println("jsonstr1111");
		moduleList = articleService.GetArticleById(blogid);
		commentList=  blogService.GetComment(blogid);
		System.out.println("commentList"+commentList);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		System.out.println("+++++++++++++++"+ob.getString("articletitle"));
		System.out.println("+++++++++++++++---------------------------"+ob.getString("blogcateid"));
		request.setAttribute("title", ob.getString("articletitle"));
		map.put("blogcateid",ob.getString("blogcateid"));
		map.put("title", ob.getString("articletitle"));
		map.put("content",ob.getString("articlecontent"));
		map.put("username",ob.getString("username"));
		map.put("creattime",ob.getString("creattime"));
		map.put("articleid",ob.getString("articleid"));
		menuList = blogCateService.BlogCateByUserId(userid);
		blogList = blogService.BlogList(userid);
		map.put("lst", blogList);
		map.put("ldt", menuList);
		map.put("ct", commentList);
		map.put("userid", userid);
		map.put("name", name);
		blogtype =blogService.BlogListByArticleType(userid, 2);
		map.put("ltt", blogtype) ;
		return "blog/"+template+"/blog";
	}
	
	
	@RequestMapping(value ="/blog/{userid}/{cateid}/b_{blogid}.do", method = RequestMethod.GET)
	public String Geddtt2dd3dtTrasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable int userid,@PathVariable int cateid,@PathVariable int blogid) throws IOException{	
		
		
		Member member =userService.GetMemberByUserId(userid);
		BlogInfo blogInfo = blogService.GetBlogInfoByUserId(userid);	
		BlogCate blogCate = blogCateService.GetBlogCateById(cateid);
		
		map.put("blogInfo", blogInfo);
		map.put("member", member);
		map.put("blogCate", blogCate);
		
		Article article =  articleService.ArticleById(blogid) ;
		map.put("article",article);
		
		List tagLst=tagService.MyTag(userid);
		map.put("tagLst", tagLst);
		
		topiclist =topicService.GetTopicSelect(userid);
		map.put("topiclist",topiclist);
		
		
		String name ="";
		if(UserUtil.getCurrentUser() != null) {		
			name =	UserUtil.getCurrentUserinfo().getUsername();
			}
		String template =blogInfo.getTemplate();
		commentList=  blogService.GetComment(blogid);
		menuList = blogCateService.BlogCateByUserId(userid);
		blogList = blogService.BlogList(userid);
		map.put("lst", blogList);
		map.put("ldt", menuList);
		map.put("ct", commentList);
		blogtype =blogService.BlogListByArticleType(userid, 2);
		map.put("ltt", blogtype) ;
		return "blog/"+template+"/blog";
	
	
	
	
	}
	
	
	
	
	/**
	 *
	 * 
	 * 
	 */

	@RequestMapping(value ="/module/share/DelBlog.do", method = RequestMethod.POST)
	public void  delblog(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
	//	int userid = UserUtil.getCurrentUserinfo().getUserid();
		int userid=U.GetUserId(request);
		int blogid = Integer.parseInt(request.getParameter("blogid"));
		blogService.DelBlogByBlogId(blogid, userid);
		String msg="ok";

		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/backstage/DelBlog.do", method = RequestMethod.POST)
	public void  backstage(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
		int userid=U.GetUserId(request);
		int blogid = Integer.parseInt(request.getParameter("blogid"));
		blogService.DelBlog(blogid);
		String msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	/**
	 * 
	 * 
	 * 
	 */
	
	
	@RequestMapping(value ="/module/share/EnterBlogEdit.do", method = RequestMethod.GET)
	public String blogedit(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
		int userid = U.GetUserId(request);	
		int blogid = Integer.parseInt(request.getParameter("blogid"));
		int cateid= 0 ;
		moduleList = articleService.GetArticleById(blogid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		cateid= Integer.parseInt(ob.getString("cateid")) ;
		map.put("Cblogcateid",ob.getString("blogcateid"));
		map.put("Ccateid",ob.getString("cateid"));
		map.put("Ccatename",ob.getString("catename"));
		map.put("title", ob.getString("articletitle"));
		map.put("content",ob.getString("articlecontent"));
		map.put("username",ob.getString("username"));
		map.put("creattime",ob.getString("creattime"));
		map.put("articleid",ob.getString("articleid"));
		map.put("ctopicid",ob.getString("topicid"));
		blogcatelist   =	blogCateService.BlogCateByUserId(userid);
		catelist  = cateService.GetCateName();
		topiclist =topicService.GetTopicSelect(userid);
		map.put("blogcatelist",blogcatelist);
		map.put("catelist",catelist);
		map.put("topiclist",topiclist);
		
		List taglt  =tagService.GetArticleTag(blogid);
		map.put("taglt",taglt);
		
		int itemid = cateService.CateById(cateid).getItemid();
		List tagl=tagService.Mytag(userid, itemid);
		
		map.put("tagl",tagl);
		
		
		return "module/share/ArticleEdit";
	}
	
	
	@RequestMapping(value ="/module/share/EditBlog.do", method = RequestMethod.POST)
	public void EditBlog(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{  
		String ids =request.getParameter("ids");
		String keys =request.getParameter("keys");
		int userid =U.GetUserId(request);
		int articleid = Integer.parseInt(request.getParameter("blogid"));
		int cateid = Integer.parseInt(request.getParameter("articlecateid"));
		int blogcateid = Integer.parseInt(request.getParameter("cateid"));
		int topicid = Integer.parseInt(request.getParameter("topicid"));
		String articlecontent =request.getParameter("content");
		String articletitle =request.getParameter("title");
		blog.setArticleid(articleid);
        blog.setArticletitle(articletitle);
        blog.setBlogcateid(blogcateid);
        blog.setArticlecontent(articlecontent);
        blog.setUserid(userid);
        blog.setArticletype(1);
        blog.setCateid(cateid);
        blog.setTopicid(topicid);
        blogService.UpdateBlog(blog);
        
        
        com.testsystem.article.vo.Cate cate  = cateService.CateById(cateid);
        
        if(StringUtils.isEmpty(keys)){
            System.out.println("自定义为空标签为空"+keys);
       }else{ 	
       	System.out.println("自定义标签为"+keys);
       	keys=keys.substring(0,keys.length()-1);
       	System.out.println("自定义标签为"+keys);
       	String[] ky =keys.split(",") ;
       	System.out.println("自定义标签为============="+ky.length);
        	for(int i=0;i<ky.length;i++){
        		System.out.println("ky["+i+"]============="+ky[i]);
       	Tag tag =	tagService.CreateTagReturId(ky[i],cate.getItemid()) ;
       	tagService.AddTagidToOwer(userid, tag.getTagid());
       	tagService.AddTagidToArticle(tag.getTagid(), articleid);
       	}
       }
       
		if (StringUtils.isEmpty(ids)) {
		} else {
			System.out.println("标签为"+ids);
			ids = ids.substring(0, ids.length() - 1);
			String[] ds = ids.split(",");
			for (int i = 0; i < ds.length; i++) {
				int tagid =Integer.parseInt(ds[i]);
				tagService.AddTagidToArticle(tagid, articleid);
			}
		}


        
        
        
		String msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
//  getUserName	
	@RequestMapping(value ="/blog/getUserName.do", method = RequestMethod.GET)
	public void Ad(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		String  jsonstr=""; 
		   int userid = U.GetUserId(request);
			if(userid==0){
				jsonstr  = " <ul ><a href='/module/usercenter/login.jsp'  style='color:#FFFFFF' >登录</a> <a href='/module/usercenter/register.jsp' style='color:#FFFFFF' >注册</a> </ul>  "; 
			}else{
				Member member =userService.GetMemberByUserId(userid);
				System.out.println("username===================================="+member.getUsername());
				jsonstr  = " <ul ><a href='/blog/"+userid+".do'  > "+member.getUsername() +"您好！  </a><a href='/module/usercenter/personinfo.jsp'>个人中心</a> <a  href='/logout.do' >（退出）</a> </ul> ";
		
			}
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
	
	
}
