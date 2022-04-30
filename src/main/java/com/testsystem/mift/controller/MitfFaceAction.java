package com.testsystem.mift.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;
import com.testsystem.mift.service.MitfFaceService;
import com.testsystem.mift.service.MitfModuleService;
import com.testsystem.mift.service.MitfProjectService;
import com.testsystem.mift.vo.MitfFace;

import net.sf.json.JSONObject;
@Controller
@RequestMapping("/mift")
public class MitfFaceAction {

	@Autowired
	private MitfFaceService mitffaceService ;
	
	@Autowired
	private MitfProjectService mitfProjectService ;
	
	@Autowired
	private MitfModuleService mitfModuleService ;
	private List moduleList ;
	private MitfFace mitfface =new MitfFace();
	

	
	@RequestMapping(value ="/GetFaceListByProjectIdMoiduleId.do", method = RequestMethod.GET)
	public void GetFaceListByProjectIdMoiduleId(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int ProjectId =Integer.parseInt(request.getParameter("projectid"));
		int ModuleId =Integer.parseInt(request.getParameter("moduleid"));
		if(ProjectId==0&&ModuleId==0){
			moduleList = mitffaceService.GetFaceListByAll();
		}else if(ModuleId==0){
			moduleList = mitffaceService.GetFaceListByProjectId(ProjectId);
		}else{
			moduleList = mitffaceService.GetFaceListByProjectIdModuleId(ProjectId, ModuleId);
		}
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/GetProjectSelect.do", method = RequestMethod.GET)
	public void GetProjectSelect(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
		moduleList = mitfProjectService.GetProjectList();
		String html = "<option value='0'>全部</option>";
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html + "<option value='" + oc.getString("projectid") + "'>" + oc.getString("projectname") + "</option> ";
		}
		System.out.println("projcet"+html );
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/GetModuleSelect.do", method = RequestMethod.GET)
	public void GetModuleSelect(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
		int projectid =Integer.parseInt(request.getParameter("projectid"));
		moduleList = mitfModuleService.GetModuleListByProjectId(projectid);
		String html = "<option value='0'>全部</option>";
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html + "<option value='" + oc.getString("moduleid") + "'>" + oc.getString("modulename") + "</option> ";
		}
		System.out.println("projcet"+html );
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/GetInterfaceSelect.do", method = RequestMethod.GET)
	public void GetInterfaceSelect(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
		int moduleid =Integer.parseInt(request.getParameter("moduleid"));
		moduleList = mitffaceService.GetFaceListByModuleId(moduleid);
		String html = "<option value='0'>全部</option>";
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html + "<option value='" + oc.getString("interfaceid") + "'>" + oc.getString("interfacename") + "</option> ";
		}
		System.out.println("projcet"+html );
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/AddFace.do", method = RequestMethod.POST)
	public void AddFace(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
		
		int projectid =Integer.parseInt(request.getParameter("projectid"));
		int moduleid =Integer.parseInt(request.getParameter("moduleid"));
		String interfacename =request.getParameter("facename") ;
		String interfacedesc =request.getParameter("content") ;
		String createtime =DataFormat.DataTime() ;
//		int userid = UserInfo.GetUserId(request);
		int userid = UserUtil.getCurrentUserinfo().getUserid();
		mitfface.setInterfacename(interfacename);
		mitfface.setInterfacedesc(interfacedesc);
		mitfface.setProjectid(projectid);
		mitfface.setModuleid(moduleid);
		mitfface.setUserid(userid);
		mitfface.setCreatetime(createtime);
		mitffaceService.AddFace(mitfface);

		String html = "发布成功";
		System.out.println("projcet"+html );
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/Mift_InterfaceDetail.do", method = RequestMethod.GET)
	public String GetArticle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
//		int interfaceid = 1 ;
		int interfaceid = Integer.parseInt(request.getParameter("interfaceid"));
		moduleList =mitffaceService.GetInterfacDetailById(interfaceid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		map.put("interfacename", ob.getString("interfacename"));
		map.put("projectname", ob.getString("projectname"));
		map.put("modulename",ob.getString("modulename"));
		map.put("interfacedesc",ob.getString("interfacedesc"));
		map.put("username",ob.getString("username"));
		return "/module/mift/Mift_InterfaceDetail";
	}
	
	@RequestMapping(value ="/Mift_InterfaceManage.do", method = RequestMethod.GET)
	public String InteraceList(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	

		return "/module/mift/Mift_InterfaceManage";
	}
	
	@RequestMapping(value ="/GetFaceList.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = mitffaceService.GetFaceListByAll();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
}
