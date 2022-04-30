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

import com.testsystem.helper.JsonAndString;
import com.testsystem.name.service.BaseService;

import net.sf.json.JSONObject;

@Controller
public class BaseController {
	
	@Autowired
	private  BaseService baseService ;
	String sql="";
	private List moduleList;
	
	@RequestMapping(value ="/name/getCateList.do", method = RequestMethod.GET)
	public void GetCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		sql="select *  from life_cate  ";
		moduleList = baseService.GetInfoList(sql);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/name/getlifeList.do", method = RequestMethod.GET)
	public void GetCtate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		sql ="select  *  from  life_content  a , life_cate  b ,admin_user c "
				+"where  a.cateid =b.id and  a.userid  =c.userid";
		moduleList = baseService.GetInfoList(sql);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/name/admin_getNameList.do", method = RequestMethod.GET)
	public void GegggtCtate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		sql ="SELECT *  from  life_name ";
		moduleList = baseService.GetInfoList(sql);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/name/admin_GetSurName.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		sql="select *  from life_name where namenumber=1";
		List nameList =   baseService.GetInfoList(sql) ;
		sql="select *  from life_name where namenumber=2";
		List dList =   baseService.GetInfoList(sql) ;
		map.put("nameList",  nameList) ;
		map.put("dList",  dList) ;
	    return "/module/name/Admin_NameManage";
	}
	
	
	@RequestMapping(value ="/name/admin_LoadNameInfo.do", method = RequestMethod.GET)
	public String FinhhdNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int  nameid=Integer.parseInt(request.getParameter("nameid"));
		sql="select *  from life_name where nameid="+nameid  ;
		List dList =   baseService.GetInfoList(sql) ;
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(dList).get(0);
		map.put("nameid", ob.getString("nameid"));
		map.put("SurName", ob.getString("name"));
		map.put("origin", ob.getString("origin"));
		map.put("person", ob.getString("person"));
	    return "/module/name/Admin_NameEditor";
	}
	
	
	@RequestMapping(value ="/name/admin_NameEditor.do", method = RequestMethod.GET)
	public void GegggtCtddate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
		int        nameid=Integer.parseInt(request.getParameter("nameid"));
		String    SurName = request.getParameter("SurName");
		String    origin = request.getParameter("origin");
		String    person = request.getParameter("person") ;
		sql ="update  life_name   set    name='"+SurName+"' , origin='"+origin+"', person ='"+person+"'          where  nameid="+nameid;
		baseService.UpdataInfo(sql);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	@RequestMapping(value ="/name/looklist.do", method = RequestMethod.GET)
	public String FidnhhdNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		sql="select *  from life_yunshi_data  " ;
		List dt =   baseService.GetList(sql);
		map.put("dt", dt);
	    return "/template/name/looklist";
	}
	
	
	
	

}
