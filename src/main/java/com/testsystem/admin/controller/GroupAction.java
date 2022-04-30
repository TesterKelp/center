package com.testsystem.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.PermissionService;
import com.testsystem.admin.service.impl.GroupServiceImpl;
import com.testsystem.admin.vo.Group;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;
@Controller
public class GroupAction {

	
	
	@Autowired
	private GroupServiceImpl groupService;
	@Autowired
	private PermissionService permissionService ;
	private List moduleList;
	
	Group group =new Group();

	@RequestMapping(value ="/module/admin/getGroupList.do", method = RequestMethod.GET)
	public void AddCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
		moduleList = groupService.GetGroupList() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/admin/getGroupUserList.do", method = RequestMethod.GET)
	public void AddC(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int groupid = Integer.parseInt(request.getParameter("groupid"));
		moduleList = groupService.GetGroupUserList(groupid) ;	
		String html ="" ;
			for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
				html = html+ ob.getString("realname")+" ";
	}
		System.out.println("jsonstr"+html );
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	
	
	
	@RequestMapping(value ="/module/admin/saveGroup.do", method = RequestMethod.POST)
	public void SaveGroup(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String groupname = request.getParameter("groupname");
		String groupdesc = request.getParameter("groupdesc");
		group.setName(groupname);
		group.setDesct(groupdesc);
		group.setRole("1111");
		
		int groupid=	groupService.SaveGroup(group); 
		for (int i = 0; i < JsonAndString.ListToJsonArray(permissionService.permissionAllList()).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(permissionService.permissionAllList()).get(i);
			int permissionid=Integer.parseInt(ob.getString("permissionid") );
		if(!permissionService.IsHave(groupid, permissionid)){
			permissionService.SyncGroupPermission(groupid, permissionid);	
		}
		}
		
		String   msg="save sucessfully !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/admin/delGroup.do", method = RequestMethod.POST)
	public void DelGroup(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int groupid = Integer.parseInt(request.getParameter("groupid"));
		groupService.DelGroup(groupid);
		groupService.DelUserByGroupId(groupid);
		groupService.DelPermissonByGroupId(groupid);
		String   msg="del sucessfully !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/admin/getInGroupUser.do", method = RequestMethod.GET)
	public void GetInGroupUser(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int groupid = Integer.parseInt(request.getParameter("groupid"));
		moduleList = groupService.GetGroupUserList(groupid) ;	
		System.out.println(moduleList);
		String html ="<table  class=\"table-ellipsis\"><tr>" ;
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			if (i % 12 == 0) {
				html = html
						+ "</tr><tr><td style='border:1px solid #F00 ;width:100px'><input type=\"checkbox\" checked='false' value=\""
						+ ob.getString("userid") + "\" onclick=\"groupdeluser(this)\"> " + ob.getString("realname")
						+ "</td>";
			} else {
				html = html + "<td style='border:1px solid #F00;width:100px'><input type=\"checkbox\" checked='false' value=\""
						+ ob.getString("userid") + "\" onclick=\"groupdeluser(this)\"> " + ob.getString("realname")
						+ "</td>";
			}
		}
			html =html +"</tr></table>" ;
		System.out.println("jsonstr"+html );
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/admin/getOutGroupUser.do", method = RequestMethod.GET)
	public void GetOutGroupUser(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int groupid = Integer.parseInt(request.getParameter("groupid"));
		moduleList = groupService.GetOutGroupUser(groupid);
		System.out.println(moduleList);
		String html ="<table class=\"table-ellipsis\"><tr>" ;
			for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			  if(i%12==0){
				  html = html+"</tr><tr><td style='border:1px solid #F00;width:100px'><input type=\"checkbox\"   value=\""+ob.getString("userid")+"\" onclick='addusertogroup(this)'> "+ob.getString("realname")+"</td>";
			  }else{   
				  html = html+"<td style='border:1px solid  #F00;width:100px'><input type=\"checkbox\"   value=\""+ob.getString("userid")+"\" onclick='addusertogroup(this)'> "+ob.getString("realname")+"</td>";  
			  }
			}
			html =html +"</tr></table>" ;
		System.out.println("jsonstr"+html );
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	@RequestMapping(value ="/module/admin/addUserToGroup.do", method = RequestMethod.POST)
	public void addUserToGroup(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("qwerrttytyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
		int groupid = Integer.parseInt(request.getParameter("groupid"));
		int userid  = Integer.parseInt(request.getParameter("userid"));
		String username = request.getParameter("username");
		groupService.addUserToGroup(groupid, userid);
		String   msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	
	
	@RequestMapping(value ="/module/admin/groupDelUser.do", method = RequestMethod.POST)
	public void groupDelUser(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("qwerrttytyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
		int groupid = Integer.parseInt(request.getParameter("groupid"));
		int userid  = Integer.parseInt(request.getParameter("userid"));
		String username = request.getParameter("username");
		groupService.groupDelUser(groupid, userid);
		String   msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
}
