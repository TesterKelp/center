package com.testsystem.name.controller;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.name.service.WordService;
import com.testsystem.name.vo.Kangxi;
import com.testsystem.name.vo.Numb;

@Controller
public class WordController {
	
	@Autowired
	private WordService wordService ;
	
	@RequestMapping(value ="/name/kangxi/index.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		
		
		return "/template/name/indexkangxi";
	}
	
	
	
	@RequestMapping(value = "/name/kangxi/word.do", method = RequestMethod.GET)
	public void SetCaseRunnileNumber(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
	
		String  word =request.getParameter("word");
		
		Kangxi kangxi = wordService.GetKeyByWord(word);
		
		ObjectMapper objectMapper = new ObjectMapper();

		String json = objectMapper.writeValueAsString(kangxi);
		
		System.out.println(json);

	//	String  result="{\"numb\":\""+numbe+"\",\"title\":\""+numer.getTitle()+"\",\"jx\":\""+numer.getJx()+"\",\"content\":\""+numer.getContent()+"\"}";
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(json);
		response.getWriter().flush();	
	}
	
	
	
	
	
	

}
