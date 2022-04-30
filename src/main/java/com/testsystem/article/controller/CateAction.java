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

import com.testsystem.article.service.CateService;
import com.testsystem.article.vo.Cate;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class CateAction {
	
	@Autowired
	private CateService cateService;
	private List moduleList;
	Cate cate =new Cate();
	@RequestMapping(value ="/module/share/getCateList.do", method = RequestMethod.GET)
	public void GetCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = cateService.GetCateList() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	                       
	@RequestMapping(value ="/module/share/GetCateJson.do", method = RequestMethod.GET)
	public void GetCatde(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = cateService.GetCateJson() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();

	}
	
	@RequestMapping(value ="/module/share/GetCateJsonByItem.do", method = RequestMethod.GET)
	public void GetCateJsonByItem(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String item_directorie = request.getParameter("dir").toString();
		moduleList = cateService.GetCateJsonByItem(item_directorie);
	//	moduleList = cateService.GetCateJson() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();

	}
	
	
	
	@RequestMapping(value ="/module/share/saveCate.do", method = RequestMethod.POST)
	public void AddCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String catename =request.getParameter("catename");
		String catedirectory =request.getParameter("catedirectory");
		int catetype = Integer.parseInt(request.getParameter("catetype"));
		cate.setCatename(catename);
		cate.setCatedirectory(catedirectory);
		cate.setCatetype(catetype);
		cateService.SaveCate(cate);
		String msg="save category succfully !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();

	}
	
//	@RequestMapping(value ="/module/share/saveCate.do", method = RequestMethod.POST)
//	public void GetCateSelect(ModelMap map, HttpServletResponse response,
//			HttpServletRequest request) throws IOException{
//		String catename =request.getParameter("catename");
//		String catedirectory =request.getParameter("catedirectory");
//		int catetype = Integer.parseInt(request.getParameter("catetype"));
//		cate.setCatename(catename);
//		cate.setCatedirectory(catedirectory);
//		cate.setCatetype(catetype);
//		cateService.SaveCate(cate);
//		String msg="save category succfully !";
//		response.getWriter().write("{\"msg\":\""+msg+"\"}");
//		response.getWriter().flush();
//
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/share/delCate.do", method = RequestMethod.POST)
	public void DelCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{

		int cateid= Integer.parseInt(request.getParameter("cateid"));

		cateService.DelCate(cateid);
		String msg="del category succfully !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();

	}
	
	
	
	@RequestMapping(value ="/module/share/getCate.do", method = RequestMethod.GET)
	public void GetCateName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = cateService.GetCateName();
		String html ="" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html+"<a href='List.do?cateid="+ob.getString("cateid")+"'>"+ob.getString("catename")+"</a> | ";
}

		response.getWriter().write(html);
		response.getWriter().flush();

	}
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/share/GetShareCateSelect.do", method = RequestMethod.GET)
	public void GetShareCateSelect(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
	
		moduleList =cateService.GetCateName();
		String html ="" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html+"<option value='"+ob.getString("cateid")+"'>"+ob.getString("catename")+"</option> ";
}    //<option value="0">ϵͳ����</option>
		String msg="save category succfully !";
		response.getWriter().write(html);
		response.getWriter().flush();

	}
	
	
	
	@RequestMapping(value ="/module/share/GetHiddenCateSelect.do", method = RequestMethod.GET)
	public void GetHiddenCateSelect(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
	
		moduleList =cateService.GetHiddenCateSelect();
		String html ="" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html+"<option value='"+ob.getString("cateid")+"'>"+ob.getString("catename")+"</option> ";
}    //<option value="0">ϵͳ����</option>
		String msg="save category succfully !";
		response.getWriter().write(html);
		response.getWriter().flush();

	}
	
	
	

}
