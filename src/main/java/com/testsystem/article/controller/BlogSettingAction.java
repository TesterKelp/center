package com.testsystem.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.article.service.BlogSettingService;
import com.testsystem.article.vo.BlogSetting;
import com.testsystem.helper.U;

@Controller
public class BlogSettingAction {
	@Autowired
	private BlogSettingService  blogSettingService ;
																				  
	@RequestMapping(value ="/blog/saveBlogSetting.do", method = RequestMethod.POST)
	public void AddCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request , BlogSetting blogSetting) throws IOException{
		int userid = U.GetUserId(request);
		blogSetting.setUserid(userid);
		blogSettingService.EditBlogSetting(blogSetting);
		String msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}

	
	@RequestMapping(value ="/blog/BlogSettingPage.do", method = RequestMethod.GET)
	public String GetArticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int userid =U.GetUserId(request);
		if(userid==0){
			
		}else{
			BlogSetting blogSetting =(BlogSetting) blogSettingService.GetBlogSettingByUserId(userid).get(0);
			System.out.println("tempate:::::::::::::::::::::::::::"+blogSetting.getTemplate());
			map.put("userid",blogSetting.getUserid());
			map.put("introduce",blogSetting.getIntroduce());
			map.put("notice",blogSetting.getNotice());	
		}
		return "/blog/BlogSetting";	
	}
	
	
	
	
	
	
	
	
	
	
	
}
