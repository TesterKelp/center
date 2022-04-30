package com.testsystem.article.controller;

import java.io.IOException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.article.service.BlogService;
import com.testsystem.article.service.CommentService;
import com.testsystem.article.util.HtmlGenerator;
import com.testsystem.article.vo.Comment;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class CommentAction {
	
	@Autowired
	private CommentService  commentService ;
	@Autowired
	private BlogService blogService;
	
	private List<?> commentList ;
	Comment comment =new Comment();
	
	@RequestMapping(value ="/module/share/GetComment.do", method = RequestMethod.POST)
	public void SaveComment11(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int articleid = Integer.parseInt(request.getParameter("articleid"));
		commentList=  commentService.GetComment(articleid);
		String html="";
		for (int i = 0; i <JsonAndString.ListToJsonArray(commentList).size(); i++){
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(commentList).get(i);
			html = html+"#"+(i+1)+"("+oc.getString("username")+")<Br>"+oc.getString("content")+"<hr>";
}
        System.out.println(html);
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/share/JSGetComment.do", method = RequestMethod.GET)
	public void JSGetComment(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int articleid = Integer.parseInt(request.getParameter("articleid"));
		commentList=  blogService.GetComment(articleid);
		String  jsonstr =  JsonAndString.ListToJsonToString(commentList);	
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
//	��������
	@RequestMapping(value ="/module/share/SaveComment.do", method = RequestMethod.POST)
	public void  SaveComment(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String msg="ok";
		int articleid = Integer.parseInt(request.getParameter("articleid"));
		String content =request.getParameter("content");
		comment.setArticleid(articleid);
		comment.setContent(content);
		Format format = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(format.format(new Date()));
        comment.setCommenttime(format.format(new Date()));
        if(UserUtil.getCurrentUserinfo() != null){  
        	  System.out.println("discuz id :"+UserUtil.getCurrentUserinfo().getUserid());
              comment.setUserid(UserUtil.getCurrentUserinfo().getUserid());
              commentService.SaveComment(comment);
//              HtmlGenerator h = new HtmlGenerator("");
//              h.GetWebDir(2, articleid);
              System.out.println("���¸�����html");
              
		}else{
			 msg ="login";
		}
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/module/share/SaveToComment.do", method = RequestMethod.POST)
	public void  SaveCommdent(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String msg="ok";
		int articleid = Integer.parseInt(request.getParameter("articleid"));
		int commentid = Integer.parseInt(request.getParameter("commentid"));
		String content =request.getParameter("content");
		comment.setArticleid(articleid);
		comment.setContent(content);
		comment.setCommentid(commentid);
		Format format = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(format.format(new Date()));
        comment.setCommenttime(format.format(new Date()));
        if(UserUtil.getCurrentUserinfo() != null){  
        	  System.out.println("discuz id :"+UserUtil.getCurrentUserinfo().getUserid());
              comment.setUserid(UserUtil.getCurrentUserinfo().getUserid());
              commentService.SaveComment(comment);
              HtmlGenerator h = new HtmlGenerator("");
              h.GetWebDir(2, articleid);
              System.out.println("���¸�����html");
              
		}else{
			 msg ="login";
		}
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
//	ɾ������
	
//	@RequestMapping(value ="/module/share/DelComment.do", method = RequestMethod.POST)
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
	
	
	
	
	
	
	
	

}
