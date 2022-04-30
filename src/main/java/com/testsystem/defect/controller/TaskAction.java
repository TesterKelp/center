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

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.service.DefectProjectService;
import com.testsystem.defect.service.DefectService;
import com.testsystem.defect.service.OperationService;
import com.testsystem.defect.service.TaskService;
import com.testsystem.defect.util.AssembleField;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class TaskAction {
	
	@Autowired
	private OperationService operationService;
	@Autowired 
	private  DefectService defectService ;
	@Autowired 
	private  TaskService taskService ;
	@Autowired 
	private  UserService userService ;
	@Autowired
	private DefectProjectService defectProjectService ;
	
	private List moduleList;
	private  List operationvalueList ;
	private  List userList ;
	@RequestMapping(value ="/module/defect/Task.do", method = RequestMethod.GET)
	public String Task(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
				System.out.println("qweewe");
				String  operationcode ="";
				System.out.println("46555555555555555555555555555555555555555555555");
				moduleList =	defectService.GetPermissionByUserId(UserUtil.getCurrentUserinfo().getUserid()) ;
				String[] strArray={"closebug","ebug","xbug","dbug","gbug","ropen","rbug"};
				   //输出java数组
				   for(int i=0;i<strArray.length;i++)
				   {
				    System.out.println(strArray[i]);//输出结果 1 2 3
				    operationcode =operationcode +GetPermiss(moduleList ,strArray[i]) +","  ;
				   }
				   operationcode	=   operationcode.substring(0,operationcode.length()-1); 
				   System.out.println(operationcode+"operationcode");
				map.put("operationcode", operationcode);
				return "/module/defect/TaskList";
	}

	
	@RequestMapping(value ="/module/defect/EnterTaskEdit.do", method = RequestMethod.GET)
	public String EnterTaskEdit(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int  taskid =	Integer.parseInt(request.getParameter("taskid"));
		String html ="" ;
		int j;
		moduleList = taskService.TaskDetail(taskid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		map.put("taskid", taskid);
		map.put("cuserid", ob.getString("cuserid"));
		map.put("taskname", ob.getString("taskname"));
		map.put("taskcontent",ob.getString("taskcontent"));
		map.put("ctime",ob.getString("ctime"));
		
		map.put("auserid",ob.getString("auserid"));
		map.put("tstatus",ob.getString("tstatus"));
		map.put("createrealname",ob.getString("createrealname"));
		map.put("assignedrealname",ob.getString("assignedrealname"));
		userList=userService.GetUserList();
		map.put("assigned",ob.getString("auserid"));
		map.put("userList",userList);
		
		//--------------------------------自定义数据加载 ，思路先差到有哪些自定义数据，在获取该用例中的自定义数据
		
		moduleList =taskService.GetShowOperationByTask();
		
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++) {// 循环json数组
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);// 得到json对象
//			String operationid = ob.getString("operationid");// name这里是列名称，获取json对象中列名为name的值
			int operationid = Integer.parseInt(oc.getString("operationid"));
			String englishname = oc.getString("englishname");
			String chinaname = oc.getString("chinaname");
			int operationtype = Integer.parseInt(oc.getString("operationtype"));
			int datasource = Integer.parseInt(oc.getString("datasource"));
			String fieldname = oc.getString("fieldname");		
			String  sqlstr =oc.getString("sqlstr");	
			String  value =ob.getString(fieldname);
			System.out.println("defect value  is ="+value);
			
			j=i+1;
			if (j % 4 == 1) {
				html =  html +"	  <div class='form-group'> "
                              + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
                              + " <div class='col-sm-2'>"
        		              +  GetOperatinDateEdit(operationtype , englishname ,operationid,datasource,sqlstr,value)
				              + "</div>" ;
			}
			if (j % 4 == 2) {
				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
                        + " <div class='col-sm-2'>"
			              +  GetOperatinDateEdit(operationtype , englishname ,operationid,datasource,sqlstr,value)
			              + "</div>" ;
			}
			if (j % 4 == 3) {
				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
                        + " <div class='col-sm-2'>"
			              +  GetOperatinDateEdit(operationtype , englishname ,operationid,datasource,sqlstr,value)
			              + "</div>" ;
			}
			if (j % 4 == 0) {
				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
                        + " <div class='col-sm-2'>"
			              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr )
			              + "</div> </div> " ;				
			}
		}

			
		if(JsonAndString.ListToJsonArray(moduleList).size()%4!=0){
			html =html +"</div>" ;
		}
		System.out.println("html" + html);
		
		map.put("cumhtml",html);
		
		
		
		
		
				return "/module/defect/TaskEdit";
	}
	
	public String GetOperatinDateEdit(int operationtype, String englishname, int operationid,int datasource,String  sqlstr,String value) {
		String operation = "";
		if (operationtype == 1) {
			String valuetext ="";
			operationvalueList = defectService.GetOperationValue(operationid);
			for (int i = 0; i < JsonAndString.ListToJsonArray(operationvalueList).size(); i++) {// 循环json数组
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(operationvalueList).get(i);// 得到json对
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
			for (int i = 0; i < JsonAndString.ListToJsonArray(operationvalueList).size(); i++) {// 循环json数组
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(operationvalueList).get(i);// 得到json对象
				String valueid = ob.getString("valueid");// name这里是列名称，获取json对象中列名为name的值
				String valuetext = ob.getString("valuetext");
//				operation2 = operation2 + "<option value='" + valueid + "'>" + valuetext + "</option>";
				if(value.equals(valuetext)){
					operation2 = operation2 + "<option   selected       value='" + valueid + "'>" + valuetext + "</option>";
				}
				else{
					operation2 = operation2 + "<option value='" + valueid + "'>" + valuetext + "</option>";
				}
				
			}
			// <option value="0">审核状态</option>
			String operation3 = "</select>";
			operation = operation1 + operation2 + operation3;
		}
		return operation;
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/defect/taskList.do", method = RequestMethod.GET)
	public String DefectList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
				System.out.println("qweewe");
				String  operationcode ="";
				System.out.println("46555555555555555555555555555555555555555555555");
				moduleList =	defectService.GetPermissionByUserId(UserUtil.getCurrentUserinfo().getUserid()) ;
				String[] strArray={"closebug","ebug","xbug","dbug","gbug","ropen","rbug"};
				   //输出java数组
				   for(int i=0;i<strArray.length;i++)
				   {
				    System.out.println(strArray[i]);//输出结果 1 2 3
				    operationcode =operationcode +GetPermiss(moduleList ,strArray[i]) +","  ;
				   }
				   operationcode	=   operationcode.substring(0,operationcode.length()-1); 
				   System.out.println(operationcode+"operationcode");
				map.put("operationcode", operationcode);
		return "/module/defect/TaskList";
	}
	public String  GetPermiss(List lst,String pcode){
		String  ishave = "0" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(lst).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(lst).get(i);
			if(ob.getString("permissioncode").equals(pcode)){
				ishave ="1" ;
			}
		}
		return ishave;
	}
	
	@RequestMapping(value = "/module/defect/JstaskList.do", method = RequestMethod.GET)
	public void GetOperationList(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("211322224554232");
		moduleList = taskService.GetTask();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/CreateTask.do", method = RequestMethod.GET)
	public void CreateDefect(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("qwewqeqe");
		String taskcontent = URLDecoder.decode(request.getParameter("editorValue"),"UTF-8");  
		String taskname =URLDecoder.decode( request.getParameter("title") ,"UTF-8");
		String assigned =URLDecoder.decode( request.getParameter("assigned") ,"UTF-8");
		moduleList =operationService.GetShowOperationByTask();
		String ctime =DataFormat.DataTime();
		int userid =UserUtil.getCurrentUser().getUserid();
		String  sql1="  insert into  defect_task  ( taskname,taskcontent,cuserid,auserid,ctime,tstatus ,isshow ";
		String  sql2=" values ('"+taskname+"','"+taskcontent +"','"+userid+"','"+assigned+"','"+ctime+"','1','0'";
		int num=JsonAndString.ListToJsonArray(moduleList).size();
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {// 循环json数组
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);// 得到json对象
			String filed = ob.getString("fieldname");
			sql1 = AssembleField.AssembleField(sql1, filed, num-1, i);
			String englishname = ob.getString("englishname");
			java.net.URLDecoder.decode((String)request.getParameter(englishname),"UTF-8"); 
			String  value= URLDecoder.decode(request.getParameter(englishname),"UTF-8") ;
			sql2= AssembleField.AssembleFieldValue(sql2, value, num-1,i);
			System.out.println(englishname+"ABC"+ value);
			System.out.println(englishname+"===value=="+ URLDecoder.decode(request.getParameter(englishname),"UTF-8") );
		}
		String sql =sql1+" )"+sql2 +")";
		System.out.println("sqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsql"+ sql);
		int  taskid =		taskService.CreateTask(sql);
		//System.out.println("xinzeng  id"+bugid);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
		
	
	@RequestMapping(value = "/module/defect/TaskCreateCustom.do", method = RequestMethod.GET)
	public void CreateDefectPage(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		moduleList = operationService.GetShowOperationBySubjectType(3);
		JsonAndString.ListToJsonToString(moduleList) ;
		String html ="" ;
		int j;
//		JSONArray array = new JSONArray(data);//将json字符串转成json数组
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++) {// 循环json数组
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);// 得到json对象
//			String operationid = ob.getString("operationid");// name这里是列名称，获取json对象中列名为name的值
			int operationid = Integer.parseInt(ob.getString("operationid"));
			String englishname = ob.getString("englishname");
			String chinaname = ob.getString("chinaname");
			int operationtype = Integer.parseInt(ob.getString("operationtype"));
			int datasource = Integer.parseInt(ob.getString("datasource"));
			String fieldname = ob.getString("fieldname");		
			String  sqlstr =ob.getString("sqlstr");	
			System.out.println("operationid=============" +operationid);
			j=i+1;
			if (j % 4 == 1) {
				html =  html +"	  <div class='form-group'> "
                              + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
                              + " <div class='col-sm-2'>"
        		              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr)
				              + "</div>" ;
			}
			if (j % 4 == 2) {
				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
                        + " <div class='col-sm-2'>"
			              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr)
			              + "</div>" ;
			}
			if (j % 4 == 3) {
				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
                        + " <div class='col-sm-2'>"
			              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr)
			              + "</div>" ;
			}
			if (j % 4 == 0) {
				html =  html  + "<label class='col-sm-1 control-label'>"+chinaname+"</label>"
                        + " <div class='col-sm-2'>"
			              +  GetOperatinDate(operationtype , englishname ,operationid,datasource,sqlstr )
			              + "</div> </div>" ;				
			}
		}
		if(JsonAndString.ListToJsonArray(moduleList).size()%4!=0){
			html =html +"</div>" ;
		}
		System.out.println("html" + html);
		response.getWriter().write(html);
		response.getWriter().flush();
	}   
	
	public String GetOperatinDate(int operationtype, String englishname, int operationid,int datasource,String  sqlstr) {
		String operation = "";
		if (operationtype == 1) {
			String valuetext ="";
			operationvalueList = defectService.GetOperationValue(operationid);
			for (int i = 0; i < JsonAndString.ListToJsonArray(operationvalueList).size(); i++) {// 循环json数组
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(operationvalueList).get(i);// 得到json对
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
			for (int i = 0; i < JsonAndString.ListToJsonArray(operationvalueList).size(); i++) {// 循环json数组
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(operationvalueList).get(i);// 得到json对象
				String valueid = ob.getString("valueid");// name这里是列名称，获取json对象中列名为name的值
				String valuetext = ob.getString("valuetext");
				operation2 = operation2 + "<option value='" + valueid + "'>" + valuetext + "</option>";
			}
			String operation3 = "</select>";
			operation = operation1 + operation2 + operation3;
		}
		return operation;
	}
	
	
	
	
	
	@RequestMapping(value = "/module/defect/EditTask.do", method = RequestMethod.GET)
	public void EditTask(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		
		
		
		String taskcontent = URLDecoder.decode(request.getParameter("editorValue"),"UTF-8");  
		String taskname =URLDecoder.decode( request.getParameter("title") ,"UTF-8");
		String assigned =URLDecoder.decode( request.getParameter("assigned") ,"UTF-8");
		moduleList =operationService.GetShowOperationByTask();
		String taskid =URLDecoder.decode( request.getParameter("taskid") ,"UTF-8");
//		String  sql1="  insert into  defect_task  ( taskname,taskcontent,cuserid,auserid,ctime,tstatus ,isshow ";

		String  sql1 ="  update defect_task  set   "
			    +"taskname='"+taskname+"', "
			    +"taskcontent='"+taskcontent+"', "
			    +"auserid='"+assigned+"' "
				;

//		moduleList =defectService.GetShowOperationByDefaultProject(0);
		moduleList =operationService.GetShowOperationByTask();
//		moduleList = operationService.GetOperationListByIsShow();
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {// 循环json数组
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			String filed = ob.getString("fieldname");
			String englishname = ob.getString("englishname");
			String  value= URLDecoder.decode(request.getParameter(englishname),"UTF-8") ;
			sql1=sql1  +","+      filed +"='"+value+"' " ;
			
		}
		
		String sql=sql1+ "where taskid="+taskid ;
		System.out.println("update  taske   sql:"+sql);
		defectService.UpdataDefect(sql);
		response.getWriter().write("ok");
		response.getWriter().flush();
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/module/defect/TaskDetail.do", method = RequestMethod.GET)
	public String DefectDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request) {
	int  taskid =Integer.parseInt(request.getParameter("taskid"));
	moduleList = taskService.TaskDetail(taskid);
	JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
	map.put("taskid", taskid);
	map.put("cuserid", ob.getString("cuserid"));
	map.put("taskname", ob.getString("taskname"));
	map.put("taskcontent",ob.getString("taskcontent"));
	map.put("ctime",ob.getString("ctime"));
	map.put("auserid",ob.getString("auserid"));
	map.put("tstatus",ob.getString("tstatus"));
	map.put("createrealname",ob.getString("createrealname"));
	map.put("assignedrealname",ob.getString("assignedrealname"));
	return "/module/defect/TaskDetail" ;
	}
	
	
	
	/**
	 * @param map
	 * @param response
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping(value = "/module/defect/DelTask.do", method = RequestMethod.GET)
	public void DelTask(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("211322224554232");
		int  taskid =	Integer.parseInt(request.getParameter("taskid"));
		taskService.DelTask(taskid);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	/**
	 * @param map
	 * @param response
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping(value = "/module/defect/FinishTask.do", method = RequestMethod.GET)
	public void FinishTask(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("211322224554232");
		int  taskid =	Integer.parseInt(request.getParameter("taskid"));
		taskService.SetTaskStatus(taskid);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	

	/**
	 * @param map
	 * @param response
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping(value = "/module/defect/GetTaskAssigned", method = RequestMethod.GET)
	public void GetTaskAssigned(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int  assigned =Integer.parseInt(request.getParameter("assigned"));
		String  operation2 ="";
		moduleList = userService .GetUserList();
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {// 循环json数组
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);// 得到json对象
			String userid = ob.getString("userid");// name这里是列名称，获取json对象中列名为name的值
			String realname = ob.getString("realname");
			if (assigned == Integer.parseInt(userid)) {
				operation2 = operation2 + "<option value='" + userid + "'     selected='selected'  >" + realname
						+ "</option>";
			} else {
				operation2 = operation2 + "<option value='" + userid + "'>" + realname + "</option>";
			}

		}
	response.getWriter().write(operation2);
	response.getWriter().flush();
}
	
	/**
	 * @param map
	 * @param response
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping(value = "/module/defect/AssignedTask.do", method = RequestMethod.GET)
	public void AssignedTask(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("211322224554232");
		int  taskid =	Integer.parseInt(request.getParameter("taskid"));
		int   assignedid =	Integer.parseInt(request.getParameter("assigned"));
		taskService.AssignedTask(taskid, assignedid);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
}
