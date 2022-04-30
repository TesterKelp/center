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
import com.testsystem.article.service.BlogCateService;
import com.testsystem.article.vo.BlogCate;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;

import net.sf.json.JSONObject;
@Controller
public class BlogCateAction {
	
	@Autowired
	private BlogCateService blogCateService;
	private List moduleList;
	private List menuList ;
	BlogCate blogcate =new BlogCate();
	String msg= "";
	
	@RequestMapping(value ="/blog/saveBlogCate.do", method = RequestMethod.POST)
	public void AddCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String blogcatename =request.getParameter("blogcatename");
		blogcate.setBlogcatename(blogcatename);
		blogcate.setUserid(UserUtil.getCurrentUserinfo().getUserid());
		blogcate.setSort(0);
		blogCateService.SaveBlogCate(blogcate);
		System.out.println("blogcatename"+blogcatename);
		String msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}

	
	@RequestMapping(value ="/blog/alterBlogCate.do", method = RequestMethod.POST)
	public void alterBlogCate(BlogCate  blogCate  ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int rs =	blogCateService.AlterBlogCate(blogCate) ;
		System.out.println("fanhuijieguo======"+rs);
		response.getWriter().write(rs+"");
		response.getWriter().flush();
	}
	
	
	
	
	

	@RequestMapping(value ="/blog/getBlogCate.do", method = RequestMethod.GET)
	public void BlogCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int userid =U.GetUserId(request);
		blogcate.setUserid(userid);
		moduleList = blogCateService.GetBlogCate(blogcate) ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/blog/getBlogMenu.do", method = RequestMethod.GET)
	public void BlogCateMenu(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid =U.GetUserId(request);
		blogcate.setUserid(userid);
		moduleList = blogCateService.GetBlogCate(blogcate) ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	

	
	
	
	
	@RequestMapping(value ="/module/share/GetBlogCateSelcet.do", method = RequestMethod.GET)
	public void GetBlogCateSelcet(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		 int userid =U.GetUserId(request);
		menuList = blogCateService.BlogCateByUserId(userid);
		String html="<li><a href='../../../blog/"+userid+".html'>������ҳ</a></li>" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(menuList).size(); i++){
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(menuList).get(i);
			html = html+"<option value='"+oc.getString("blogcateid")+"'>"+oc.getString("blogcatename")+"</option> ";
}	
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	
	
	
	
	@RequestMapping(value ="/blog/DelBlogCate.do", method = RequestMethod.POST)
	public void DelBlogCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
	int blogcateid   = 	Integer.parseInt(request.getParameter("blogcateid"));
  if(blogCateService.IsHaveBlog(blogcateid)){
	  msg ="blog";
  }else{
	  blogCateService.DelBlogCate(blogcateid);
	  msg ="ok";
  }
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	@RequestMapping(value ="/blog/SetBlogCateSort.do", method = RequestMethod.POST)
	public void DelBlosgCate(BlogCate  blogCate ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		blogCateService.SetBlogCateSort(blogCate);
		msg ="ok";
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
}
