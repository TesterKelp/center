package com.testsystem.name.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.api.common.ListFormatToString;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.name.service.FamilyService;

import net.sf.json.JSONArray;

@Controller
public class FamilyController {

	
	@Autowired
	private FamilyService familyService ;
	
	
	@Autowired
	private ItemService itemService ;
	
	private String rsstatus;
	private String message;
	@RequestMapping(value ="/name/FamilyIndex.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List family =   familyService.GetAllFamily()  ;
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		
		
		map.put("family",  family) ;
		return "module/name/FamilyIndex";
	}
	@RequestMapping(value ="/name/FamilyIndex1.do", method = RequestMethod.GET)
	public String FindName11BdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List family =   familyService.GetAllFamily()  ;
		map.put("family",  family) ;
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		
		
		return "/template/name/FamilyIndex";
	}
	
	
	
	@RequestMapping(value ="/name/FamilyDetail.do", method = RequestMethod.GET)
	public String FindNameddBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int id  = Integer.parseInt(request.getParameter("id"));
		List familylst =  familyService.GetFamilyById(id) ;
		map.put("familylst",  familylst) ;
		
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "module/name/FamilyDetail";
	}
	
	@RequestMapping(value ="/name/FamilyDetail1.do", method = RequestMethod.GET)
	public String FindNameddBdd1dylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int id  = Integer.parseInt(request.getParameter("id"));
		List familylst =  familyService.GetFamilyById(id) ;
		map.put("familylst",  familylst) ;
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "/template/name/FamilyDetails";
	}
	
	
	@RequestMapping(value = "/name/getFamilyNameSelect.do", method = RequestMethod.GET)
	public void SetCaseRunnerSucessAndFaileNumber(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		List moduleList =  familyService.GetFamilyNameSelect(id) ;
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    System.out.println("rsstatus="+rsstatus+"message="+message);
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
	    
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();	
	}
	
	
	
	
	
	@RequestMapping(value ="/name/FamilyMembers.do", method = RequestMethod.GET)
	public String FamilyMembers(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int id  = Integer.parseInt(request.getParameter("id"));
		List familylst =  familyService.GetFamilyMembersById(id) ;
		map.put("id", id);
		map.put("familylst",  familylst) ;
		return "module/name/FamilyMembers";
	}
	
	
	@RequestMapping(value ="/name/FamilyMembers1.do", method = RequestMethod.GET)
	public String FamilyMember1s(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int id  = Integer.parseInt(request.getParameter("id"));
		List familylst =  familyService.GetFamilyMembersById(id) ;
		map.put("id", id);
		map.put("familylst",  familylst) ;
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		
		return "/template/name/FamilyMembers";
	}
	
	
	
	
	
	@RequestMapping(value ="/name/FamilyTree.do", method = RequestMethod.GET)
	public void FindNameddBddddddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int id  = Integer.parseInt(request.getParameter("id"));
		//组织树的顶层节点信息
	    Map m = new HashMap();
	    m.put("id", "4");
	    m.put("name", "孟氏家族");
	    m.put("title", "1");
	    m.put("pid", null);
	    Map tree = getCurr(m);
	    
	    JSONArray jsonAry = JSONArray.fromObject(tree);
	    String jsonStr = jsonAry.toString();
	    
	   String s=  "{ \"data\": "+jsonStr +"}" ;
	    
	    
	    System.out.print("mmmmmmmmmmmmmmmmmm"+s);
	response.setContentType("text/plain;charset=UTF-8");
	//如果这里不输出json信息，前端form提交回调的success方法就不会执行

	try {
	response.getWriter().write(s);
	} catch (IOException e) {
	e.printStackTrace();
	}

	}
	
	
	public Map getCurr(Map m){
		System.out.println("----------------------------------------------");
//		String currId = (String) m.get("id");
		String currId =  m.get("id").toString();
		System.out.println("------::"+currId);
		List childMap = new ArrayList();
		List childList = familyService.FamilygetChildren(Integer.parseInt(currId));
		System.out.println("------::"+childList);
		//有孩子节点，本身非叶子节点
		System.out.println("childList.size()=="+childList.size());
		if (childList != null && childList.size() > 0) {
			// java的内部集合数据的处理机制，比单纯的for循环速度快，内容消耗还不是随机的，不会造成内存碎片
			Iterator it = childList.iterator();
			while (it.hasNext()) {
				Map mi = (Map) it.next();
				Map mm = new HashMap();
				System.out.println("ID=" + mi.get("ID"));
				mm.put("id", mi.get("ID"));
				System.out.println("name=" + mi.get("NAME"));
				mm.put("name", mi.get("NAME"));
				System.out.println("pid=" + mi.get("PID"));
				mm.put("pid", mi.get("PID"));
				mm.put("title", mi.get("TITLE"));
				childMap.add(mm);
				m.put("childrens", childMap);
				System.out.println("uuuuuuuuuuuuuuuuu" );
				
				getCurr(mm);// 递归查找子节点的下级信息
				
				System.out.println("hh" );
			}
		} else {
			
			m.put("childrens", "");
		}
		
		return m ;
		}
	
	
	
	
}
