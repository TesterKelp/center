package com.testsystem.defect.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.defect.service.OperationService;
import com.testsystem.defect.vo.Operation;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class OperationAction {
	@Autowired
	private OperationService operationService;
	private List moduleList;
	private Operation operation = new Operation();
	String msg ="" ;

	@RequestMapping(value = "/module/defect/getOperationList.do", method = RequestMethod.GET)
	public void GetOperationList(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		moduleList = operationService.GetOperationList() ;		
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();

	}

	@RequestMapping(value = "/module/defect/saveOperation.do", method = RequestMethod.POST)
	public void SaveOperation(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		String chinaname=request.getParameter("OperationName");
		System.out.println("request.getParameter('OperationName')");
		String englishname =request.getParameter("EnglishName");
		int operationtype = Integer.parseInt(request.getParameter("OperationType"));
		int subjecttype = Integer.parseInt(request.getParameter("SubjectType"));
		int  projectid = Integer.parseInt(request.getParameter("ProjectId"));
//		String fieldname  =  operationService.GetCustomFiledName(subjecttype) ;
		String fieldname  =  operationService.GetCustomFiledName(subjecttype, projectid);
		operation.setProjectid(projectid);
		operation.setSubjecttype(subjecttype);
		operation.setChinaname(chinaname);
		operation.setEnglishname(englishname);
		operation.setFieldname(fieldname);
		operation.setIsshow(0);
		operation.setOperationorder(0);
		operation.setOperationtype(operationtype);
		operation.setDatasource(0);
		if(operationService.IsExistEngLishName(englishname)){
			msg ="EnglishName is exist ! please change EnglishName";
		}else{
			if(fieldname.equals("no")){
				msg="not find filename";
			}else{
			operationService.SaveOperation(operation);
//			operationService.SetFieldNameIsUsed(fieldname);
			operationService.SetFieldNameIsUsed(fieldname, projectid);
			msg="sucessful";
			}
		}
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/delOperation.do", method = RequestMethod.GET)
	public void delOperation(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int operationid = Integer.parseInt(request.getParameter("OperationId"));
		operationService.DelOperation(operationid);
		msg="del is ok !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/getDefaultValue.do", method = RequestMethod.GET)
	public void getDefaultOperationvalue(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("operationid11111111111111");
		int operationid = Integer.parseInt(request.getParameter("operationid"));
		int operationtype = Integer.parseInt(request.getParameter("operationtype"));
		System.out.println("operationid"+operationid+"operationtype:::::::::::::"+operationtype);
		if(operationtype==1){
			if(operationService.GetOperationValue(operationid).equals("no")){
				msg= "setting default value";
			}else{
				msg= operationService.GetOperationValue(operationid);
			}
		}
		if(operationtype==2){
			moduleList = 	operationService.GetOperationSelectValue(operationid);
			String html ="" ;
				for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
					JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
					html = html+ "<option value=\""+ob.getString("valueid")+"\">"+ob.getString("valuetext")+"</option>";
					  System.out.println("htmlhtmlhtmlhtmlhtmlhtmlhtmlhtml"+html);
					  msg=html ;
		}
		}
		if(operationtype==3){
			if(operationService.GetOperationValue(operationid).equals("no")){
				msg= "setting default value";
			}else{
				msg= operationService.GetOperationValue(operationid);
			}
		}
//		msg="del is ok !";
//		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().write(msg);
		response.getWriter().flush();
	}

	@RequestMapping(value = "/module/defect/saveOperationVale.do", method = RequestMethod.POST)
	public void saveOperationVale(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("baocun");
		int operationid = Integer.parseInt(request.getParameter("operationid"));
		int operationtype = Integer.parseInt(request.getParameter("operationtype"));
		String operationvalue =request.getParameter("operationvalue") ;
		System.out.println("operationvalue"+operationvalue);
		boolean isfirst = true ;
		isfirst =operationService.IsFirst(operationid);
		if (operationtype == 1) {
			if (isfirst) {
				operationService.SaveOperationValue(operationvalue, operationid);
			} else {
				operationService.UpdateOperationValue(operationvalue, operationid);
			}
		}
		if (operationtype == 2) {
			operationService.SaveOperationValue(operationvalue, operationid);
		} 
		if (operationtype == 3)  {
			if (isfirst) {
				operationService.SaveOperationValue(operationvalue, operationid);
			} else {
				operationService.UpdateOperationValue(operationvalue, operationid);
			}
		}
		msg="save  ok !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}

	@RequestMapping(value = "/module/defect/setOperationShowOrHidden.do", method = RequestMethod.POST)
	public void setShowOrHidden(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int operationid = Integer.parseInt(request.getParameter("operationid"));
		int isshow = Integer.parseInt(request.getParameter("isshow"));
		if(isshow==0){
			isshow=1;
			operationService.SetShowOrHidden(operationid, isshow);
		}else{
			isshow=0;
			operationService.SetShowOrHidden(operationid, isshow);
		}
		msg="setting successful";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/module/defect/setdatasource.do", method = RequestMethod.POST)
	public void setdatasourceFrom(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int operationid = Integer.parseInt(request.getParameter("operationid"));
		int datasource = Integer.parseInt(request.getParameter("datasource"));
			operationService.Setdatasource(operationid, datasource);
			if(datasource==1){
			msg=	operationService.GetSqlStrByOperationId(operationid);
			}else{
				msg="setting successful";	
			}
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/setDataSourceSqlStr.do", method = RequestMethod.POST)
	public void setdatasource(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int operationid = Integer.parseInt(request.getParameter("operationid"));
		String  sqlstr = request.getParameter("sqlstr");
		operationService.AddOperationSqlStr(operationid, sqlstr);
				msg="setting successful";	
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/module/defect/ReportGetOperation.do", method = RequestMethod.POST)
	public void ReportGetOperation(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		moduleList = operationService.GetOperationListByIsShow();
		String pro = "";
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			pro = pro + "<option value='" + ob.getString("englishname") + "'>" + ob.getString("chinaname")
					+ "</option>";
		}
		response.getWriter().write(pro);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/module/defect/Operation.do", method = RequestMethod.GET)
	public  String  GetOperationByProjectId(ModelMap map, HttpServletResponse response, HttpServletRequest request){
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		moduleList = operationService.GetOperationByProjectId(projectid);
		map.put("olst", moduleList);
		map.put("projectid", projectid) ;
		return "/module/defect/OperationManage";

	}
	
	@RequestMapping(value = "/module/defect/AjaxOperation.do", method = RequestMethod.GET)
	public  String  Get11OperationByProjectId(ModelMap map, HttpServletResponse response, HttpServletRequest request){
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		moduleList = operationService.GetOperationByProjectId(projectid);
		map.put("olst", moduleList);
		map.put("projectid", projectid) ;
		return "/module/defect/OperationManagee";

	}
	
	
	
	@RequestMapping(value = "/module/defect/GetOperationByProjectId.do", method = RequestMethod.GET)
	public void ReportGetqqqOperation(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		System.out.println("项目ID：：：：：：：：：：：：：：："+projectid);
		moduleList = operationService.GetOperationByProjectId(projectid);
//		moduleList = operationService.GetOperationList() ;		
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/GetOperationTaskAndCase.do", method = RequestMethod.GET)
	public void RepdddortGetqqqOperation(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
//		int projectid = Integer.parseInt(request.getParameter("projectid"));
//		System.out.println("项目ID：：：：：：：：：：：：：：："+projectid);
//		moduleList = operationService.GetOperationByProjectId(projectid);
		moduleList = operationService.GetTaskAndCaseOperationList()	;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/OperationManageTaskAndCase.do", method = RequestMethod.GET)
	public  void  Get11111OperationByProjectId(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
		moduleList = operationService.GetTaskAndCaseOperationList()	;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
}
