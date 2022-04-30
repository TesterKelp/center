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

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.utils.EndecryptUtils;
import com.testsystem.article.service.ArticleService;
import com.testsystem.article.service.BlogService;
import com.testsystem.article.service.TestService;
import com.testsystem.article.util.GetPicAddress;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class TestAction {

	@Autowired
	private BlogService blogService;
	@Autowired
	private TestService testService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private UserService userService;
	private List moduleList;
	
	@RequestMapping(value ="/module/share/Data.do", method = RequestMethod.GET)
	public String GetArticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		moduleList = articleService.GetArticleList() ;
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			String articlecontent = oc.getString("articlecontent");
			int articleid = Integer.parseInt(oc.getString("articleid"));
			System.out.println("´¦Àí£º" + GetPicAddress.delHTMLTag(articlecontent));
			String inn = GetPicAddress.delHTMLTag(articlecontent);
			String articleitd ;
			System.out.println("inn.length()"+inn.length());
			if(inn.length()<=300){
				articleitd = inn.substring(0, inn.length());
			}else{
				articleitd = inn.substring(0, 300);
			}
			String sql = "update   article_content  set  articleitd='" + articleitd + "'  where  articleid="
					+ articleid;
			testService.Updata(sql);
		}
		return "/wz/Topic";
	}
	
	
	
	
	
	@RequestMapping(value ="/module/share/Pass.do", method = RequestMethod.GET)
	public String GesstArticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	

		
		moduleList = 	userService.GetUserList();
		
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			
			String password = oc.getString("password");
			int userid = Integer.parseInt(oc.getString("userid"));
			password= EndecryptUtils.md5Password("aaa", password);
			
		
			String sql = "update   admin_user  set  password='" + password + "'  where  userid="+userid ;
		
			testService.Updata(sql);
		}
		return "/wz/Topic";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
