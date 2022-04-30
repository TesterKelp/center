package com.testsystem.wift.controller;

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
import com.testsystem.helper.UserInfo;
import com.testsystem.utils.Constants;
import com.testsystem.wift.service.FaceService;
import com.testsystem.wift.service.InProjectService;
import com.testsystem.wift.service.ModuleService;
import com.testsystem.wift.vo.Face;

import net.sf.json.JSONObject;
@Controller
@RequestMapping("/wift")
public class WiftInterfaceAction {

	@Autowired
	private FaceService faceService ;
	
	@Autowired
	private InProjectService inProjectService ;
	
	@Autowired
	private ModuleService moduleService ;
	private List moduleList ;
	private Face face =new Face();
	
	
	@RequestMapping(value ="/Wift_InterfaceManage.do", method = RequestMethod.GET)
	public String GetTask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println("jsonstr" );
		return  Constants.WIFTDIR+"Wift_InterfaceManage";
	}
	
	@RequestMapping(value ="/Wift_InterfaceCreate.do", method = RequestMethod.GET)
	public String GetqqTask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println("jsonstr" );
		return  Constants.WIFTDIR+"Wift_InterfaceCreate";
	}
	
	
	
	
	@RequestMapping(value ="/GetFaceList.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = faceService.GetFaceListByAll();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/GetFaceListByProjectIdMoiduleId.do", method = RequestMethod.GET)
	public void GetFaceListByProjectIdMoiduleId(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
		int ProjectId =Integer.parseInt(request.getParameter("projectid"));
		int ModuleId =Integer.parseInt(request.getParameter("moduleid"));
		if(ProjectId==0&&ModuleId==0){
			moduleList = faceService.GetFaceListByAll();
		}else if(ModuleId==0){
			moduleList = faceService.GetFaceListByProjectId(ProjectId);
		}else{
			moduleList = faceService.GetFaceListByProjectIdModuleId(ProjectId, ModuleId);
		}
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/GetProjectSelect.do", method = RequestMethod.GET)
	public void GetProjectSelect(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
		moduleList = inProjectService.GetProjectList();
		String html = "<option value='0'>请选择项目</option>";
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
		moduleList = moduleService.GetModuleListByProjectId(projectid);
		String html = "<option value='0'>请选择模块</option>";
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
		moduleList = faceService.GetFaceListByModuleId(moduleid);
		String html = "<option value='0'>ȫ��</option>";
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
		String requesttype=request.getParameter("requesttype") ;
		String directories =request.getParameter("directories") ;
		String createtime =DataFormat.DataTime() ;
//		int userid = UserInfo.GetUserId(request);
		int userid = UserUtil.getCurrentUserinfo().getUserid();
		face.setInterfacename(interfacename);
		face.setInterfacedesc(interfacedesc);
		face.setProjectid(projectid);
		face.setModuleid(moduleid);
		face.setUserid(userid);
		face.setCreatetime(createtime);
		face.setDirectories(directories);
		face.setRequesttype(requesttype);
		faceService.AddFace(face);
		

		String html = "�����ɹ�";
		System.out.println("projcet"+html );
		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/Wift_InterfaceDetail.do", method = RequestMethod.GET)
	public String GetArticle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
//		int interfaceid = 1 ;
		int interfaceid = Integer.parseInt(request.getParameter("interfaceid"));
		moduleList = faceService.GetInterfacDetailById(interfaceid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		map.put("interfacename", ob.getString("interfacename"));
		map.put("projectname", ob.getString("projectname"));
		map.put("modulename",ob.getString("modulename"));
		map.put("interfacedesc",ob.getString("interfacedesc"));
		map.put("username",ob.getString("username"));
		map.put("requesttype",ob.getString("requesttype"));
		map.put("directories",ob.getString("directories"));
		return  Constants.WIFTDIR+"Wift_InterfaceDetail";
	}
	
	@RequestMapping(value ="/GetInterfaceInfo.do", method = RequestMethod.GET)
	public void GetIn111terfaceSelect(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
		int interfaceid = Integer.parseInt(request.getParameter("interfaceid"));
		moduleList = faceService.GetInterfacDetailById(interfaceid);
//		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
//		String  requesttype=ob.getString("requesttype");
//		String  directories=ob.getString("directories");

	
		
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	

		System.out.println("jsonstr123"+jsonstr );
		
		
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	

	
	
	
	
}
