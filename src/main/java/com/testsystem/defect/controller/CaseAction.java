package com.testsystem.defect.controller;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.service.BitsService;
import com.testsystem.defect.service.CaseService;
import com.testsystem.defect.service.DefectProjectService;
import com.testsystem.defect.service.DefectService;
import com.testsystem.defect.service.OperationService;
import com.testsystem.defect.util.AssembleField;
import com.testsystem.defect.vo.DefCase;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class CaseAction {

	@Autowired
	private  CaseService  caseService ;
	@Autowired
	private OperationService operationService;
	@Autowired 
	private  DefectService defectService ;
	@Autowired
	private  BitsService  bitsService ;
	@Autowired
	private DefectProjectService defectProjectService ;
	private List moduleList;
	private List operationvalueList;
	private List  plst ;
	private  List  projectlist  ;
	private  List  bodyList ;
	@RequestMapping(value ="/module/defect/Case.do", method = RequestMethod.GET)
	public String DefectList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int qprojectid = bitsService.GetqProjectIdByUserId(UserUtil.getCurrentUserinfo().getUserid());
		String ss = bitsService.GetProjectNameByProjectId(qprojectid);
		projectlist = defectProjectService.GetDefectProjectListAll();
		map.put("plst", projectlist);
		map.put("projectname", ss);
				System.out.println("qweewe");
				return "/module/defect/CaseList";
	}
	
	
	@RequestMapping(value ="/module/defect/jsGetCase.do", method = RequestMethod.GET)
	public void CaseList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = bitsService.GetqProjectIdByUserId(UserUtil.getCurrentUserinfo().getUserid());
		
//		moduleList=caseService.GetCase(); 	
		moduleList=caseService.GetCaseByProjectId(projectid);
	
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	
	
	
	  @RequestMapping(value={"/module/defect/jsGetCaseSearchCondition.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public void CadseList(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
	    String html = "";
	    this.moduleList = this.caseService.GetCaseSearchCondition();
	    for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); i++) {
	      JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
	      html = html + "<option value='" + ob.getString("widget_fieldname") + "'>" + 
	        ob.getString("widget_china_name") + "</option>";
	    }
	    html = " <div class='col-sm-2'><select class='form-control' name='ty'>" + html + "</select> </div>";
	    System.out.println(html);
	    response.getWriter().write(html);
	    response.getWriter().flush();
	  }
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/defect/AddDefectCase.do", method = RequestMethod.POST)
	public void AddDefectCase(ModelMap map, DefCase defCase ,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String stepall[] = request.getParameterValues("stepall");
		String resultall[] = request.getParameterValues("resultall");
		int  caseid =caseService.AddDefectCase(defCase);
		caseService.AddDefectCaseBody(stepall, resultall, caseid);
		String  jsonstr ="ok";
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	@RequestMapping(value ="/module/defect/CreateCase.do", method = RequestMethod.GET)
	public void AdddddDefectCase(ModelMap map, DefCase defCase ,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String stepall[] = request.getParameterValues("step");
		String resultall[] = request.getParameterValues("result");
		int projectid =bitsService.GetqProjectIdByUserId(UserUtil.getCurrentUserinfo().getUserid());
		
		
		int cuserid =UserUtil.getCurrentUser().getUserid();
		String ctime =DataFormat.DataTime();
		for(int i=0;i<stepall.length;i++){
			System.out.println(stepall[i] );
		}
		moduleList = operationService.GetShowOperationBySubjectType(5);
		System.out.println(moduleList);
		
		String  casename = URLDecoder.decode(defCase.getCasename(),"UTF-8") ;
		
		String  sql1="  insert into  defect_case  ( casename,cuserid,createtime,projectid ";
		String  sql2=" values ('"+casename+"','"+cuserid +"','"+ctime+"','"+projectid+"'";
		int num=JsonAndString.ListToJsonArray(moduleList).size();
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {// ѭ��json����
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);// �õ�json����
			String filed = ob.getString("fieldname");
			sql1 = AssembleField.AssembleField(sql1, filed, num-1, i);
			String englishname = ob.getString("englishname");
			System.out.println("englishname"+englishname);
			
			java.net.URLDecoder.decode((String)request.getParameter(englishname),"UTF-8"); 
			String  value= URLDecoder.decode(request.getParameter(englishname),"UTF-8") ;
			sql2= AssembleField.AssembleFieldValue(sql2, value, num-1,i);
			System.out.println(englishname+"ABC"+ value);
			System.out.println(englishname+"===value=="+ URLDecoder.decode(request.getParameter(englishname),"UTF-8") );
		}
		String sql =sql1+" )"+sql2 +")";
		System.out.println("sqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsql"+ sql);
		int  caseid =caseService.CreateCase(sql);
//		int  caseid =caseService.AddDefectCase(defCase);
		caseService.AddDefectCaseBody(stepall, resultall, caseid);
		String  jsonstr ="ok";
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	
	
	
	
	@RequestMapping(value ="/module/defect/DefecCaseDetail.do", method = RequestMethod.GET)
	public String DefecCaseDetail(ModelMap map, DefCase defCase,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int  caseid = Integer.parseInt(request.getParameter("caseid")) ;
		System.out.println("AAAAAAAAAAAAAA");
	 plst=caseService.GetCaseIndexByCaseId(caseid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(plst).get(0);
		moduleList =	caseService.GetCaseBodyByCaseId(caseid);
		map.put("caseid", ob.getString("caseid"));
		map.put("realname", ob.getString("realname"));
		map.put("casename", ob.getString("casename"));
		map.put("casedesc", ob.getString("casedesc"));
		map.put("priority", ob.getString("priority"));
		map.put("bodyList", moduleList);
				return "/module/defect/CaseDetail";
	}
	
	@RequestMapping(value ="/module/defect/EnterCaseEdit.do", method = RequestMethod.GET)
	public String DefecCaDetail(ModelMap map, DefCase defCase,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int  caseid = Integer.parseInt(request.getParameter("caseid")) ;
		String html ="" ;
		int j;
		plst=caseService.GetCaseIndexByCaseId(caseid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(plst).get(0);
		bodyList =	caseService.GetCaseBodyByCaseId(caseid);
		map.put("caseid", ob.getString("caseid"));
		map.put("casename", ob.getString("casename"));
		map.put("bodyList", bodyList);
		
		moduleList = operationService.GetShowOperationBySubjectType(5);
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++) {// ѭ��json����
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);// �õ�json����
			int operationid = Integer.parseInt(oc.getString("operationid"));
			String englishname = oc.getString("englishname");
			String chinaname = oc.getString("chinaname");
			int operationtype = Integer.parseInt(oc.getString("operationtype"));
			int datasource = Integer.parseInt(oc.getString("datasource"));
			String fieldname = oc.getString("fieldname");		
			String  sqlstr =oc.getString("sqlstr");	
			String  value =ob.getString(fieldname);//��ȡ��case�еľ���ֵ��Ȼ����ظ��ı�������ϵ�б��ʱ������
			System.out.println("defect value  is ="+value);
		
		j=i+1;
		html =  html +"<td>"+  GetOperatinDateEdit(operationtype , englishname ,operationid,datasource,sqlstr,value)
        + "</td>" ;
	}

	System.out.println("html" + html);
	map.put("cumhtml",html);
	return "/module/defect/CaseEdit";
	}
	
	public String GetOperatinDateEdit(int operationtype, String englishname, int operationid,int datasource,String  sqlstr,String value) {
		String operation = "";
		if (operationtype == 1) {
			String valuetext ="";
			operationvalueList = defectService.GetOperationValue(operationid);
			for (int i = 0; i < JsonAndString.ListToJsonArray(operationvalueList).size(); i++) {// ѭ��json����
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(operationvalueList).get(i);// �õ�json��
			valuetext = ob.getString("valuetext");
			}
			operation = "<input class='form-control'   id ='" + englishname + "'      name ='" + englishname + "'       value="+value+"          placeholder='"+valuetext+"'   type='text'>";
		}
		if (operationtype == 3) {
			operation = "<input id='hello' class='form-control' name ='" + englishname + "'   value="+value+"      onclick='laydate()'>";
		}
		if (operationtype == 2) {
			String operation1 = "	<select class='form-control'       name ='" + englishname + "'           id='" + englishname + "'> ";
			String operation2 = "	";
			
			System.out.println( "asdfghjkl:"+datasource  + sqlstr);
			if(datasource==1){
				operationvalueList = defectService.GetSelectData(sqlstr);
			}else{
				operationvalueList = defectService.GetOperationValue(operationid);
			}
			for (int i = 0; i < JsonAndString.ListToJsonArray(operationvalueList).size(); i++) {// ѭ��json����
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(operationvalueList).get(i);// �õ�json����
				String valueid = ob.getString("valueid");// name����������ƣ���ȡjson����������Ϊname��ֵ
				String valuetext = ob.getString("valuetext");
			//	operation2 = operation2 + "<option value='" + valueid + "'>" + valuetext + "</option>";
				
//				if(value==valueid ){
					if(value.equals(valuetext) ){
					operation2 = operation2 + "<option   selected       value='" + valueid + "'>" + valuetext + "</option>";
				}
				else{
					operation2 = operation2 + "<option value='" + valueid + "'>" + valuetext + "</option>";
				}
				
			}
			String operation3 = "</select>";
			operation = operation1 + operation2 + operation3;
		}
		return operation;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/module/defect/CaseCreateCustom.do", method = RequestMethod.GET)
	public void CreateDefectPage(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		moduleList = operationService.GetShowOperationBySubjectType(5);
		JsonAndString.ListToJsonToString(moduleList) ;
		String html ="" ;
		int j;
//		JSONArray array = new JSONArray(data);//��json�ַ�ת��json����
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++) {// ѭ��json����
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);// �õ�json����
//			String operationid = ob.getString("operationid");// name����������ƣ���ȡjson����������Ϊname��ֵ
			int operationid = Integer.parseInt(ob.getString("operationid"));
			String englishname = ob.getString("englishname");
			String chinaname = ob.getString("chinaname");
			int operationtype = Integer.parseInt(ob.getString("operationtype"));
			int datasource = Integer.parseInt(ob.getString("datasource"));
			String fieldname = ob.getString("fieldname");		
			String  sqlstr =ob.getString("sqlstr");	
			System.out.println("operationid=============" +operationid);
			j=i+1;
			
			
			html =  html +"<td>"+  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr)
            + "</td>" ;
			
//			
//			if (j % 4 == 1) {
//				html =  html +"	  <td>"
//        		              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr)
//				              + "</div>" ;
//			}
//			if (j % 4 == 2) {
//				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
//                        + " <div class='col-sm-2'>"
//			              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr)
//			              + "</div>" ;
//			}
//			if (j % 4 == 3) {
//				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
//                        + " <div class='col-sm-2'>"
//			              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr)
//			              + "</div>" ;
//			}
//			if (j % 4 == 0) {
//				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
//                        + " <div class='col-sm-2'>"
//			              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr )
//			              + "</div> </div>" ;				
//			}
		}
//		if(JsonAndString.ListToJsonArray(moduleList).size()%4!=0){
//			html =html +"</div>" ;
//		}
		System.out.println("html" + html);
		response.getWriter().write(html);
		response.getWriter().flush();
	}   
	
	
	
	public String GetOperatinDate(int operationtype, String englishname, int operationid,int datasource,String  sqlstr) {
		String operation = "";
		if (operationtype == 1) {
			String valuetext ="";
			operationvalueList = defectService.GetOperationValue(operationid);
			for (int i = 0; i < JsonAndString.ListToJsonArray(operationvalueList).size(); i++) {// ѭ��json����
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(operationvalueList).get(i);// �õ�json��
			valuetext = ob.getString("valuetext");
			}
			operation = "<input class='form-control'   id ='" + englishname + "'      name ='" + englishname + "'                 placeholder='"+valuetext+"'   type='text'>";
		}
		if (operationtype == 3) {
			operation = "<input id='hello' class='form-control' name ='" + englishname + "'    onclick='laydate()'>";
		}
		if (operationtype == 2) {
			String operation1 = "	<select class='form-control'       name ='" + englishname + "'           id='" + englishname + "'> ";
			String operation2 = "	";
			
			System.out.println( "asdfghjkl:"+datasource  + sqlstr);
			if(datasource==1){
				operationvalueList = defectService.GetSelectData(sqlstr);
			}else{
				operationvalueList = defectService.GetOperationValue(operationid);
			}
			for (int i = 0; i < JsonAndString.ListToJsonArray(operationvalueList).size(); i++) {// ѭ��json����
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(operationvalueList).get(i);// �õ�json����
				String valueid = ob.getString("valuetext");// name����������ƣ���ȡjson����������Ϊname��ֵ
				String valuetext = ob.getString("valuetext");
				operation2 = operation2 + "<option value='" + valueid + "'>" + valuetext + "</option>";
			}
			// <option value="0">���״̬</option>
			String operation3 = "</select>";
			operation = operation1 + operation2 + operation3;
		}
		return operation;
	}
	
	
	
	
	
	
	@RequestMapping(value ="/module/defect/DelCase.do", method = RequestMethod.POST)
	public void DelCase(ModelMap map, DefCase defCase ,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
		int  caseid = Integer.parseInt(request.getParameter("caseid")) ;
		caseService.DelCase(caseid);
		String  jsonstr ="ok";
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	
	
	
	
	
	
	
	
	
}
