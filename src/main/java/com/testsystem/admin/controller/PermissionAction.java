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

import com.testsystem.admin.service.GroupService;
import com.testsystem.admin.service.PermissionService;
import com.testsystem.admin.utils.UserUtil;
import com.testsystem.admin.vo.Permission;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class PermissionAction {
	@Autowired
	private PermissionService permissionService ;
	
	@Autowired
	private GroupService groupService ;
	private List moduleList ;
	
	
	@RequestMapping(value = "/module/admin/ddeptlist.do", method = RequestMethod.GET)
	public void Actionx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		moduleList =permissionService.permissionAllList();
		String aa =JsonAndString.ListToJsonToString(moduleList);
		System.out.println("aa:"+aa);
		String jsonstr = "";
		response.getWriter().write(aa);
		response.getWriter().flush();
	}
	

	@RequestMapping(value = "/module/admin/quan.do", method = RequestMethod.GET)
	public String Actio(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	String menu="";
	moduleList=	permissionService.permissionSetByGroupId(2);
	map.put("all", moduleList);
	return "module/admin/quan" ;
	
	}
	
	
	@RequestMapping(value = "/module/admin/SetPermission.do", method = RequestMethod.GET)
	public String Actioq(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	int GroupId =Integer.parseInt(request.getParameter("groupid"));
	System.out.println("GroupId :"+GroupId );
	moduleList=	permissionService.permissionSetByGroupId(GroupId);
	map.put("all", moduleList);
	map.put("groupid", GroupId);
	return "module/admin/SetPermission" ;
	}
	
	
	@RequestMapping(value = "/module/admin/SyncPermission.do", method = RequestMethod.GET)
	public String Sync(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	int groupid =Integer.parseInt(request.getParameter("groupid"));
	for (int i = 0; i < JsonAndString.ListToJsonArray(permissionService.permissionAllList()).size(); i++) {
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(permissionService.permissionAllList()).get(i);
		int permissionid=Integer.parseInt(ob.getString("permissionid") );
	if(!permissionService.IsHave(groupid, permissionid)){
		permissionService.SyncGroupPermission(groupid, permissionid);	
	}
	}
	System.out.println("GroupId :"+groupid );
	String menu="";
	moduleList=	permissionService.permissionSetByGroupId(groupid);
	map.put("all", moduleList);
	return "module/admin/SetPermission" ;
	}
	
	
	@RequestMapping(value = "/module/admin/CheckPermission.do", method = RequestMethod.POST)
	public void Sy(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	int groupid =Integer.parseInt(request.getParameter("groupid"));
	int permissionid =Integer.parseInt(request.getParameter("permissionid"));
	int checkstatus =Integer.parseInt(request.getParameter("checkstatus"));
	System.out.println("checkstatus:"+checkstatus );
	permissionService.CheckPermission(groupid, permissionid, checkstatus);
	response.getWriter().write("123");
	response.getWriter().flush();
	}

	@RequestMapping(value = "/module/admin/quan1.do", method = RequestMethod.GET)
	public String Actioww(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	String menu="";
//	 Ҫ�ȸ��userid  ��ѯ���������id��  ������id  ʹ�� or ��ȡ�˵������Ҷ�Ȩ��idͬ��Ľ���ȥ��
	moduleList=	permissionService.permissionSetByGroupId(2) ;
	System.out.println("menu:"+menu);
	map.put("all", moduleList);
	map.put("menu", menu);
	return "module/admin/quan" ;
	
	}
	

	@RequestMapping(value = "/module/admin/qqqq.do", method = RequestMethod.GET)
	public String Actww(ModelMap map, HttpServletResponse response, HttpServletRequest request , Permission permission) throws IOException {
		System.out.println("permission.getName():"+permission.getName());
		System.out.println("permission.getName():"+permission.getPid());
	return "module/admin/quan" ;
	}
	
	
	
	
	
	@RequestMapping(value = "/module/admin/updatesort.do", method = RequestMethod.POST)
	public void updatesort(ModelMap map, HttpServletResponse response, HttpServletRequest request, Permission permission) throws IOException {
		permissionService.updateSort(permission);
	response.getWriter().write("ok");
	response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/admin/savePermission.do", method = RequestMethod.POST)
	public void Sdddy(ModelMap map, HttpServletResponse response, HttpServletRequest request, Permission permission) throws IOException {
		 	int permissionid = this.permissionService.SavePermission(permission);
		    this.moduleList = this.groupService.GetGroupList();
		    for (int i = 0; i < this.moduleList.size(); ++i) {
		      JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
		      int groupid = Integer.parseInt(ob.getString("groupid"));
		      this.permissionService.SyncGroupPermission(groupid, permissionid);
		    }
//		permissionService.AddPermission(permission);
	response.getWriter().write("ok");
	response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/admin/updatePermission.do", method = RequestMethod.POST)
	public void UpdatePermission(ModelMap map, HttpServletResponse response, HttpServletRequest request,
			Permission permission) throws IOException {
		int permissionid = Integer.parseInt(request.getParameter("permissionid"));
		permissionService.UpdatePermission(permission);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	@RequestMapping(value = "/module/admin/DelPermission.do", method = RequestMethod.POST)
	public void DelPermission(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int permissionid =Integer.parseInt(request.getParameter("permissionid"));
		System.out.println(permissionid);
		permissionService.DelPermission(permissionid);
		groupService.DelPermissonAllGroup(permissionid);
	response.getWriter().write("ok");
	response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
}
