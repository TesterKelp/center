package com.testsystem.name.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.article.service.TopicService;
import com.testsystem.name.service.FamilyService;
import com.testsystem.name.service.NameTopicService;

@Controller
public class TopicController {

	
	
	@Autowired
	private NameTopicService nameTopicService ;
	
	
	
	@RequestMapping(value ="/name/FamilyTopic.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List topiclst =   nameTopicService.GetAllNameTopic();
		map.put("topiclst",  topiclst) ;
		return "module/name/FamilyTopic";
	}
	
	@RequestMapping(value ="/name/TopicIndex.do", method = RequestMethod.GET)
	public String FindNameByid(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int id = Integer.parseInt(request.getParameter("id"));
		List lst  =  nameTopicService.GetTopicById(id);
		List topiclst  =  nameTopicService.GetAllNameTopicById(id);
		map.put("topiclst",  topiclst) ;
		map.put("lst",  lst) ;
		return "module/name/TopicIndex";
	}
	
	
	
}
