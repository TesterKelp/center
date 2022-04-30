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
import com.testsystem.article.service.CateService;
import com.testsystem.article.service.TopicService;
import com.testsystem.article.util.HtmlGenerator;
import com.testsystem.defect.service.BitsService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class PageHtml {
	@Autowired
	private CateService cateService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private  BitsService  bitsService ;
	@Autowired
	private TopicService topicService ;
	private List catelst;
	private List tlst ;
	private List articlelst;
	HtmlGenerator h = new HtmlGenerator("");
	@RequestMapping(value = "/module/share/makeCate.do", method = RequestMethod.GET)
	public String S_PageHtml(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String url=bitsService.GetWebSiteUrl();
		catelst=cateService.GetCateList();
		articlelst=articleService.GetArticleList();
		h.GetWebDir(1, catelst);
//		h.GetWebDir(2, articlelst);
		map.put("info","cate is ok");
		return "/module/share/SetHtml";
	}

	
	@RequestMapping(value = "/module/share/makeContent.do", method = RequestMethod.GET)
	public String S_PageHtm111l(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String url=bitsService.GetWebSiteUrl();
		catelst=cateService.GetCateList();
		articlelst=articleService.GetArticleList();
//		h.GetWebDir(1, catelst);
		h.GetWebDir(2, articlelst);
		map.put("info","article is ok");
		return "/module/share/SetHtml";
	}
	
	
	@RequestMapping(value = "/module/share/makeindex.do", method = RequestMethod.GET)
	public String S_PagggeHtml(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		tlst=topicService.TopicAllList();
		h.GeneratorIndex();
		h.GeneratorTopic();
//		h.GeneratorCover(tlst);
		map.put("info","index is ok");
		
		return "/module/share/SetHtml";
	}

	
	@RequestMapping(value = "/module/share/makeTopic.do", method = RequestMethod.GET)
	public String S_Paggge1Html(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
//		tlst=topicService.TopicAllList();
//		h.GeneratorIndex();
		h.GeneratorTopic();
//		h.GeneratorCover(tlst);
		map.put("info","topic is ok");
		return "/module/share/SetHtml";
	}
	
	@RequestMapping(value = "/module/share/makeCover.do", method = RequestMethod.GET)
	public String S_Paggge2Html(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		tlst=topicService.TopicAllList();
//		h.GeneratorIndex();
//		h.GeneratorTopic();
//		h.GeneratorCover(tlst);
		map.put("info","cover is ok");
		return "/module/share/SetHtml";
	}
	
	

	

	
}
