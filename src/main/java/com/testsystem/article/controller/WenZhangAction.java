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

import com.testsystem.article.service.ArticleService;
import com.testsystem.article.service.BlogService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class WenZhangAction {
	
	@Autowired
	private ArticleService articleService;
	private List moduleList;
	private List commentList;
	@Autowired
	private BlogService blogService;
	
	
	@RequestMapping(value ="/wz/TestList.do", method = RequestMethod.GET)
	public String WzListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int cateid = Integer.parseInt(request.getParameter("cateid"));
		moduleList =articleService.ArticleListByCate(cateid);
		map.put("moduleList",moduleList);
		return "wz/TestList";
	}
	
	
	@RequestMapping(value ="/wz/TestDetail.do", method = RequestMethod.GET)
	public String GetA1rticleListByCate(ModelMap map, HttpServletResponse response,
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
		return "wz/TestDetail";
	}
	

}
