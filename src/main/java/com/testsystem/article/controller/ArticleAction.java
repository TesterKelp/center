package com.testsystem.article.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.admin.vo.Userinfo;
import com.testsystem.article.service.ArticleService;
import com.testsystem.article.service.BlogService;
import com.testsystem.article.service.CateService;
import com.testsystem.article.util.GetPicAddress;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.vo.PageList;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;
import com.testsystem.utils.GetImgSrc;

import net.sf.json.JSONObject;

@Controller
public class ArticleAction {

	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private ItemService itemService;
	
	@Autowired
	private CateService cateService;
	private List moduleList;
	private List commentList;
	private List cateList;
	@Autowired
	private BlogService blogService;
	@RequestMapping(value ="/module/share/getArticleList.do", method = RequestMethod.GET)
	public void AllArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = articleService.GetArticleList() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	} 
	
	@RequestMapping(value ="/article/updateArticleType.do", method = RequestMethod.GET)
	public void AllArticfle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{

		int articleType =	Integer.parseInt(request.getParameter("articleType"));
		int articleid =	Integer.parseInt(request.getParameter("articleid"));
		String  jsonstr =""+ articleService.UpdateArticleType(articleid, articleType) ;
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/share/getMyArticleList.do", method = RequestMethod.GET)
	public void MyArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid = UserUtil.getCurrentUserinfo().getUserid();
		moduleList = articleService.GetMyArticleList(userid) ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}

	
	@RequestMapping(value ="/module/share/getMyArticleListPage.do", method = RequestMethod.GET)
	public void MyArtic1le(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
		System.out.println("jsonstr");
		int pagesize =	Integer.parseInt(request.getParameter("pageSize"));
		System.out.println("pagesize="+pagesize);
		
		int pageindex =	Integer.parseInt(request.getParameter("pageIndex"));
		System.out.println("pageindex="+pageindex);
	//	int userid = UserUtil.getCurrentUserinfo().getUserid();
		int userid =U.GetUserId(request);

		PageList ls ;
		ls=articleService.GetMyArticleList(userid, pageindex, pagesize);
//		ls.getPageNum()
//		ls.getPages()

		moduleList =ls.getList() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		String s="{\"total\":"+ls.getTotalRecord()+",\"rows\":"+jsonstr+"}" ;
		
		response.getWriter().write(s);
		response.getWriter().flush();
	}
	
	

	
	
	@RequestMapping(value ="/module/share/ArticleList.do", method = RequestMethod.GET)
	public void AllUserArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = articleService.ArticleList();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/share/ArticleListPage.do", method = RequestMethod.GET)
	public void AllUserArtiwcle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("jsonstr");
		int pagesize =	Integer.parseInt(request.getParameter("pageSize"));
		System.out.println("pagesize="+pagesize);
		
		int pageindex =	Integer.parseInt(request.getParameter("pageIndex"));
		System.out.println("pageindex="+pageindex);
		
		PageList ls ;
		ls=articleService.ArticleList(pageindex, pagesize);
//		ls.getPageNum()
//		ls.getPages()
		

		moduleList =ls.getList() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		String s="{\"total\":"+ls.getTotalRecord()+",\"rows\":"+jsonstr+"}" ;
		
		
		System.out.println("formater:"+s );
		response.getWriter().write(s);
		response.getWriter().flush();
	}
	
	
	
	
	@RequestMapping(value ="/module/share/ArticleHiddenList.do", method = RequestMethod.GET)
	public void ArticleHidden(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("jsonstr");
		moduleList = articleService.ArticleHiddenList();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	
	
	@RequestMapping(value ="/ArticleList.do", method = RequestMethod.GET)
	public void AllUserArtic(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("jsonstr");
		moduleList = articleService.ArticleList();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/module/share/ArticleCate.do", method = RequestMethod.GET)
	public void  articleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int cateid = Integer.parseInt(request.getParameter("cateid"));
		System.out.println("jsonstr");
		moduleList = articleService.ArticleListByCate(cateid);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	/**
	 * @param map
	 * @param response
	 * @param request
	 * @return articleDetailByArtictlId
	 * @throws IOException
	 */
	@RequestMapping(value ="/module/share/ArticleDetail.do", method = RequestMethod.GET)
	public String GetArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int articleid = Integer.parseInt(request.getParameter("articleid"));
		System.out.println("jsonstr1111");
		moduleList = articleService.GetArticleById(articleid);
		commentList=  blogService.GetComment(articleid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		System.out.println("+++++++++++++++"+ob.getString("articletitle"));
		request.setAttribute("title", ob.getString("articletitle"));
		map.put("articleid", articleid);
		map.put("title", ob.getString("articletitle"));
		map.put("content",ob.getString("articlecontent"));
		map.put("userid",ob.getString("userid"));
		map.put("username",ob.getString("username"));
		map.put("creattime",ob.getString("creattime"));
		map.put("clst",commentList);
		return "module/share/ArticleDetail";
	}
	
	
	@RequestMapping(value ="/module/share/InsideDetail.do", method = RequestMethod.GET)
	public String GetArticssle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int articleid = Integer.parseInt(request.getParameter("articleid"));
		System.out.println("jsonstr1111");
		moduleList = articleService.GetArticleById(articleid);
		commentList=  blogService.GetComment(articleid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		System.out.println("+++++++++++++++"+ob.getString("articletitle"));
		request.setAttribute("title", ob.getString("articletitle"));
		map.put("articleid", articleid);
		map.put("title", ob.getString("articletitle"));
		map.put("content",ob.getString("articlecontent"));
		map.put("userid",ob.getString("userid"));
		map.put("username",ob.getString("username"));
		map.put("creattime",ob.getString("creattime"));
		map.put("clst",commentList);
		return "module/share/InsideDetail";
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/share/ArticleList1.do", method = RequestMethod.GET)
	public String GetArticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int cateid = Integer.parseInt(request.getParameter("cateid"));
//		System.out.println("jsonstr1111");
//		moduleList = articleService.GetArticleById(articleid);
//		commentList=  blogService.GetComment(articleid);
//		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
//		System.out.println("+++++++++++++++"+ob.getString("articletitle"));
//		request.setAttribute("title", ob.getString("articletitle"));
//		map.put("articleid", articleid);
//		map.put("title", ob.getString("articletitle"));
//		map.put("content",ob.getString("articlecontent"));
//		map.put("username",ob.getString("username"));
//		map.put("creattime",ob.getString("creattime"));
		map.put("cateid",cateid);
		return "module/share/ShareList";
	}
	
	
	
	@RequestMapping(value ="/module/share/InsideCate.do", method = RequestMethod.GET)
	public String GetA1rticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int cateid = Integer.parseInt(request.getParameter("cateid"));
		map.put("cateid",cateid);
		return "module/share/InsideList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/share/ArticleCateList.do", method = RequestMethod.GET)
	public void GetArticleList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("jsonstr");
		moduleList = articleService.ArticleList();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		UserUtil.getCurrentUser().getUserid();
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/share/ArticleSearch.do", method = RequestMethod.POST)
	public String ArticleSearch(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String keyword =  request.getParameter("keyword");
		System.out.println(" keywordwwwwwwwwwwwwwwwwww"+ keyword);
		map.put("keyword",keyword);
		return "module/share/ShareSearch";
	}
	
	@RequestMapping(value ="/module/share/ArticleSearchRs.do", method = RequestMethod.GET)
	public void GetArticlet(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("jsonstr");
		String str =  request.getParameter("keyword");
		String keyword=new String(str.getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(" strrrrrrrrrrrrrrrrrrrrrr------------------"+ str);
		moduleList = articleService.ArticleSearch(keyword);
		System.out.println("RS::::::::::::"+moduleList);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/wz/htmlindex.do", method = RequestMethod.GET)
	public String htmlindex(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	

		moduleList = articleService.ArticleList();
		map.put("clst",moduleList);
		return "/wz/index";
	}
	
	
	
	@RequestMapping(value ="/module/share/ArticleHidenEdit.do", method = RequestMethod.GET)
	public String htffmlindex(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
	    int userid = UserUtil.getCurrentUserinfo().getUserid();
	    int blogid = Integer.parseInt(request.getParameter("articleid"));
	    this.moduleList = this.articleService.GetArticleById(blogid);
	    JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(0);
	    map.put("Cblogcateid", ob.getString("blogcateid"));
	    map.put("Ccateid", ob.getString("cateid"));
	    map.put("title", ob.getString("articletitle"));
	    map.put("content", ob.getString("articlecontent"));
	    map.put("articleid", ob.getString("articleid"));

	    this.cateList = this.cateService.GetHiddenCateSelect();
	    map.put("cateList", this.cateList);
	    System.out.println("111111111111111111111" + this.cateList);
	    System.out.println("module/share/ArticleHidenEdit");
	    return "module/share/ArticleHidenEdit";
	}
	
	
	
	
	
//	http://192.168.1.101:8080/article/pic.do?dir=softtest&id=0
	@RequestMapping(value ="/article/pic.do", method = RequestMethod.GET)
	public void GetArticlejList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String  dir =  request.getParameter("dir");
		int  id =  Integer.parseInt(request.getParameter("id"));
		moduleList  =	itemService.ItemAllArticle(dir);
		int size =0 ;
		if(id==0){
			size =moduleList.size();
		}else {
			size=1 ;
		}
		System.out.println("待处理个数："+size);
		
		for(int i=0;i<size;i++){
			int  articleid  ;
		if(id==0){
			JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);	
			articleid  = Integer.parseInt(ob.getString("articleid")) ;
		}else {
			articleid  =id  ;
		}
		  List lst =	articleService.GetArticleById(articleid);
		   JSONObject b = (JSONObject)JsonAndString.ListToJsonArray(lst).get(0);
		  String  art  = b.getString("articlecontent");
		  GetImgSrc  gi =new GetImgSrc();
		  
		  if(gi.getImgSrc(art).size()==0){
			  
		  }else {
			  String sr =  gi.getImgSrc(art).get(0)  ;
			  System.out.println("pic=="+sr);  
		  }
		  String  picaddress= GetPicAddress.GetPicId(art);
		  System.out.println("img=="+picaddress);
		  
		  if(picaddress==null||picaddress.equals("")){
			  
		  }else{
			  articleService.SetArticlePic(articleid, picaddress);  
		  }
		  
		  
		}
		
		
		
		

		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
}
