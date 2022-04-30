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
import com.testsystem.defect.service.BitsService;
import com.testsystem.defect.service.CycleService;
import com.testsystem.defect.service.DefectProjectService;
import com.testsystem.defect.service.DefectService;
import com.testsystem.defect.service.OperationService;
import com.testsystem.defect.util.AssembleField;
import com.testsystem.defect.vo.Cycle;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.UserInfo;

import net.sf.json.JSONObject;
@Controller
public class DefectAction {
	@Autowired
	private OperationService operationService;
	@Autowired 
	private  DefectService defectService ;
	@Autowired 
	private  UserService userService ;
	@Autowired 
	private  CycleService cycleService ;
	@Autowired
	private  BitsService  bitsService ;
	@Autowired
	private DefectProjectService defectProjectService ;
	private List moduleList;
	private List projectlist ;
	private  List operationvalueList ;
	private List permissList ;
	private List userList ;
	private List showOperationList ;
	Cycle cycle =new Cycle();
	
	@RequestMapping(value = "/module/defect/defectList.do", method = RequestMethod.GET)
	public String DefectList(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String operationcode = "";
		moduleList = defectService.GetPermissionByUserId(UserUtil.getCurrentUserinfo().getUserid());
		String[] strArray = { "closebug", "ebug", "xbug", "dbug", "gbug", "ropen", "rbug" };
		for (int i = 0; i < strArray.length; i++) {
			System.out.println(strArray[i]);
			operationcode = operationcode + GetPermiss(moduleList, strArray[i]) + ",";
		}
		operationcode = operationcode.substring(0, operationcode.length() - 1);
		map.put("operationcode", operationcode);
		projectlist = defectProjectService.GetDefectProjectListAll();
		System.out.println("project name========"+projectlist);
		map.put("plst", projectlist);

		 int projectId = this.bitsService.getNowUserProjectId();
		String ss = bitsService.GetProjectNameByProjectId(projectId);
		map.put("projectname", ss);
		return "/module/defect/DefectList";
	}
	
	@RequestMapping(value = "/module/defect/JsProjectList.do", method = RequestMethod.GET)
	public void GetOperatiodnList(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		projectlist = defectProjectService.GetDefectProjectListAll();
		String  jsonstr =  JsonAndString.ListToJsonToString(projectlist);	
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/module/defect/RecycleList.do", method = RequestMethod.GET)
	public String RecycleList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
				System.out.println("qweewe");
				String  operationcode ="";
				moduleList =	defectService.GetPermissionByUserId(UserUtil.getCurrentUserinfo().getUserid()) ;
				String[] strArray={"closebug","ebug","xbug","dbug","gbug","ropen","rbug"};
				   for(int i=0;i<strArray.length;i++)
				   {
				    System.out.println(strArray[i]);
				    operationcode =operationcode +GetPermiss(moduleList ,strArray[i]) +","  ;
				   }
				   operationcode	=   operationcode.substring(0,operationcode.length()-1); 
				map.put("operationcode", operationcode);
		return "/module/defect/RecycleList";
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
	
	
	
	
	@RequestMapping(value = "/module/defect/JsdefectList.do", method = RequestMethod.GET)
	public void GetOperationList(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		moduleList = defectService.GetDefectAll();	
		int  projectid =bitsService.GetqProjectIdByUserId(UserUtil.getCurrentUserinfo().getUserid());
		System.out.println("projectid===="+projectid);
		moduleList =defectService.GetDefectAllByProjectId(projectid);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/defectDetail.do", method = RequestMethod.GET)
	public void Actionajax(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("ajax");
		String jsonstr = "";
		response.getWriter().write("{\"msg\":\"sucessful\"}");
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/createDefectPage.do", method = RequestMethod.GET)
	public void CreateDefectPage(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int projectId = this.bitsService.getNowUserProjectId();
	    this.moduleList = this.defectService.getWidgetShowByProjectId(projectId);
	    JsonAndString.ListToJsonToString(this.moduleList);
	    String html = "";

	    html = GetWidgetHtml(this.moduleList);
	    System.out.println("-==================================" + html);
	    if (JsonAndString.ListToJsonArray(this.moduleList).size() % 4 != 0) {
	      html = html + "</div>";
	    }
	    response.getWriter().write(html);
	    response.getWriter().flush();
	} 
	
	public String GetWidgetHtml(List widgetList) {
	    String html = "";

	    for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); i++) {
	      JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
	      int widgetId = Integer.parseInt(ob.getString("widget_id"));
	      String widgetEnglishName = ob.getString("widget_english_name");
	      String widgetChinaName = ob.getString("widget_china_name");
	      int widgetType = Integer.parseInt(ob.getString("widget_type"));
	      int widgetDataSource = Integer.parseInt(ob.getString("widget_datasource"));
	      String widgetFieldName = ob.getString("widget_fieldname");
	      String widgetSqlStr = ob.getString("widget_sqlstr");
	      int j = i + 1;
	      if (j % 4 == 1) {
	        html = html + "\t  <div class='form-group'> " + 
	          "<label class='col-sm-1 control-label'>" + widgetChinaName + "</label>" + 
	          " <div class='col-sm-2'>" + 
	          GetOperatinDate(widgetType, widgetEnglishName, widgetId, widgetDataSource, widgetSqlStr) + 
	          "</div>";
	      }
	      if (j % 4 == 2) {
	        html = html + "<label class='col-sm-1 control-label'>" + widgetChinaName + "</label>" + 
	          " <div class='col-sm-2'>" + 
	          GetOperatinDate(widgetType, widgetEnglishName, widgetId, widgetDataSource, widgetSqlStr) + 
	          "</div>";
	      }
	      if (j % 4 == 3) {
	        html = html + "<label class='col-sm-1 control-label'>" + widgetChinaName + "</label>" + 
	          " <div class='col-sm-2'>" + 
	          GetOperatinDate(widgetType, widgetEnglishName, widgetId, widgetDataSource, widgetSqlStr) + 
	          "</div>";
	      }
	      if (j % 4 == 0) {
	        html = html + "<label class='col-sm-1 control-label'>" + widgetChinaName + "</label>" + 
	          " <div class='col-sm-2'>" + 
	          GetOperatinDate(widgetType, widgetEnglishName, widgetId, widgetDataSource, widgetSqlStr) + 
	          "</div> </div>";
	      }
	    }

	    return html;
	  }
	
	
	
	public String GetOperatinDate(int widgetType, String widgetEnglishName, int widgetId, int widgetDataSource, String widgetSqlStr)
	  {
	    String operation = "";
	    if (widgetType == 1) {
	      String valuetext = "";

	      this.operationvalueList = this.defectService.GetWidgetValue(widgetId);
	      for (int i = 0; i < JsonAndString.ListToJsonArray(this.operationvalueList).size(); i++) {
	        JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.operationvalueList).get(i);
	        valuetext = ob.getString("valuetext");
	      }
	      operation = "<input class='form-control'   id ='" + widgetEnglishName + "'      name ='" + widgetEnglishName + "'                 placeholder='" + valuetext + "'   type='text'>";
	    }
	    if (widgetType == 3) {
	      operation = "<input id='hello' class='form-control' name ='" + widgetEnglishName + "' onclick='laydate()'>";
	    }
	    if (widgetType == 2) {
	      String operation1 = "<select class='form-control'  name ='" + widgetEnglishName + "'   id='" + widgetEnglishName + "'> ";
	      String operation2 = "\t";
	      System.out.println("asdfghjkl:" + widgetDataSource + widgetSqlStr);
	      if (widgetDataSource == 1)
	        this.operationvalueList = this.defectService.GetSelectData(widgetSqlStr);
	      else {
	        this.operationvalueList = this.defectService.GetWidgetValue(widgetId);
	      }
	      for (int i = 0; i < JsonAndString.ListToJsonArray(this.operationvalueList).size(); i++) {
	        JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.operationvalueList).get(i);
	        String valueid = ob.getString("valueid");
	        String valuetext = ob.getString("valuetext");
	        operation2 = operation2 + "<option value='" + valuetext + "'>" + valuetext + "</option>";
	      }
	      String operation3 = "</select>";
	      operation = operation1 + operation2 + operation3;
	    }
	    return operation;
	  }
	
	
		
	@RequestMapping(value = "/module/defect/DefectDetail.do", method = RequestMethod.GET)
	public String DefectDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request) {
		String  operationcode ="";
		permissList =	defectService.GetPermissionByUserId(UserUtil.getCurrentUserinfo().getUserid()) ;
		System.out.println("permissListpermissListpermissListpermissListpermissListpermissListpermissListpermissListpermissListpermissListpermissList"+permissList);
		String[] strArray={"closebug","ebug","xbug","dbug","gbug","ropen","rbug"};
		   for(int i=0;i<strArray.length;i++)
		   {
		    System.out.println(strArray[i]);//输出结果 1 2 3
		    operationcode =operationcode +GetPermiss(permissList ,strArray[i]) +","  ;
		   }
		   operationcode	=   operationcode.substring(0,operationcode.length()-1); 

		
	int  bugid =Integer.parseInt(request.getParameter("bugid"));
	moduleList = defectService.GetDefectByBugId(bugid);
	JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
	map.put("bugid", bugid);
	map.put("createuserid", ob.getString("createuserid"));
	map.put("bugtitle", ob.getString("bugtitle"));
	map.put("bugstep",ob.getString("bugstep"));
	map.put("severity",ob.getString("severity"));
	map.put("priority",ob.getString("priority"));
	map.put("createtime",ob.getString("createtime"));
	map.put("assigned",ob.getString("assigned"));
	map.put("pstatus",ob.getString("pstatus"));
	map.put("createrealname",ob.getString("createrealname"));
	map.put("assignedrealname",ob.getString("assignedrealname"));
	map.put("cyclelist", cycleService.CycleByBugId(bugid));
	map.put("operationcode", operationcode);
	return "/module/defect/DefectDetail" ;
	}
	
	@RequestMapping(value = "/module/defect/c.do", method = RequestMethod.GET)
	public void CreateDefect(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("qwewqeqe");
		String bugstep = URLDecoder.decode(request.getParameter("editorValue"),"UTF-8");  
		System.out.println("bugstep:"+bugstep);
		String bugtitle =URLDecoder.decode( request.getParameter("bugtitle") ,"UTF-8");
		String severity =URLDecoder.decode( request.getParameter("severity") ,"UTF-8");
		String priority =URLDecoder.decode( request.getParameter("priority") ,"UTF-8");
		String assigned =URLDecoder.decode( request.getParameter("assigned") ,"UTF-8");
		int  projectId =bitsService.GetqProjectIdByUserId(UserUtil.getCurrentUserinfo().getUserid());
	    projectId = this.bitsService.getNowUserProjectId();
	    this.moduleList = this.defectService.GetShowOperationByDefaultProject(projectId);
	    this.moduleList = this.defectService.getWidgetShowByProjectId(projectId);
		String ctime =DataFormat.DataTime();
		int userid =UserUtil.getCurrentUser().getUserid();
		String  sql1="  insert into  defect_bug  ( assigned,createuserid,createtime,pstatus ,bugstatus,bugtitle ,bugstep,severity ,priority,projectid ";
		String  sql2=" values ('"+assigned+"','"+userid+"','"+ctime+"','1','0','"+bugtitle+"','"+bugstep+"','"+severity+"','"+priority+"','"+projectId+"'";
		int num=JsonAndString.ListToJsonArray(moduleList).size();
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {// 循环json数组
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);// 得到json对象
			String filed = ob.getString("widget_fieldname");
			sql1 = AssembleField.AssembleField(sql1, filed, num-1, i);
	
			String englishname = ob.getString("widget_english_name");
			URLDecoder.decode((String)request.getParameter(englishname),"UTF-8"); 
			String  value= URLDecoder.decode(request.getParameter(englishname),"UTF-8") ;
			sql2= AssembleField.AssembleFieldValue(sql2, value, num-1,i);
			System.out.println(englishname+"ABC"+ value);
			System.out.println(englishname+"===value=="+ URLDecoder.decode(request.getParameter(englishname),"UTF-8") );
		}
		String sql =sql1+" )"+sql2 +")";
		System.out.println("sqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsqlsql"+ sql);
//		defectService.CreateDefect(sql);
		//调用Service 将bug信息写入到 表中
		int  bugid =defectService.ReturnBugIdCreateDefect(sql);
		System.out.println("xinzeng  id"+bugid);
		AddCycle(bugid,"创建缺陷");
		response.getWriter().write("ok");
		response.getWriter().flush();
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
	
	@RequestMapping(value = "/module/defect/DefectLoaderEditPage.do", method = RequestMethod.GET)
	public String DefectLoaderEditPage(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int  bugid =Integer.parseInt(request.getParameter("bugid"));
		String html ="" ;
		int j;
		moduleList = defectService.GetDefectByBugId(bugid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		//---------------------------------------------------------------------
		userList=userService.GetUserList();
		map.put("assigned",ob.getString("assigned"));
		map.put("userList",userList);
		map.put("bugtitle", ob.getString("bugtitle"));
		map.put("bugstep",ob.getString("bugstep"));
		map.put("bugid",bugid);
		map.put("severity",ob.getString("severity"));
		map.put("priority",ob.getString("priority"));
		//--------------------------------自定义数据加载 ，思路先差到有哪些自定义数据，在获取该用例中的自定义数据
//		showOperationList = defectService.GetShowOperation();
		int projectid =bitsService.GetqProjectIdByUserId(UserUtil.getCurrentUserinfo().getUserid());
		showOperationList = defectService.GetShowOperationByDefaultProject(projectid);
		for (int i = 0; i <JsonAndString.ListToJsonArray(showOperationList).size(); i++) {// 循环json数组
			JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(showOperationList).get(i);// 得到json对象
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
			              + "</div> " ;				
			}
		}

			
		if(JsonAndString.ListToJsonArray(moduleList).size()%4!=0){
			html =html +"</div>" ;
		}
		System.out.println("html" + html);
		
		
		//GetOperatinDate(int operationtype, String englishname, int operationid,int datasource,String  sqlstr) 方法 增加字段value，
		//如果类型为文本框 或者 时间，直接将根据用例id查询到的值value  赋值给文本框或时间类型的  默认值
       // 下拉列表的需要根据用例id查询到的值value 设置 select​
		

		map.put("cumhtml",html);
		System.out.print( bugid +" bugid ");
		return "/module/defect/DefectEdit" ;
}
	
	@RequestMapping(value = "/module/defect/DefectSaveEdit.do", method = RequestMethod.GET)
	public void DefectSaveEdit(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	
		String bugstep = URLDecoder.decode(request.getParameter("editorValue"),"UTF-8");  
		System.out.println("bugstep:"+bugstep);
		String bugtitle =URLDecoder.decode( request.getParameter("bugtitle") ,"UTF-8");
		String severity =URLDecoder.decode( request.getParameter("severity") ,"UTF-8").trim();
		String priority =URLDecoder.decode( request.getParameter("priority") ,"UTF-8").trim();
		String assigned =URLDecoder.decode( request.getParameter("assigned") ,"UTF-8");
		String bugid =URLDecoder.decode( request.getParameter("bugid") ,"UTF-8");
//			String sql="update defect_bug set   pstatus="+pstatus+" ,  assigned="+assigned+"   where bugid="+bugid  ;
		String  sql1 ="  update defect_bug set   "
			    +"bugtitle='"+bugtitle+"', "
			    +"severity='"+severity+"', "
			    +"priority='"+priority+"',"
			    +"assigned='"+assigned+"' , "
			    +"bugstep='"+bugstep+"' "
				;
		
		int  projectid =bitsService.GetqProjectIdByUserId(UserUtil.getCurrentUserinfo().getUserid());

		moduleList =defectService.GetShowOperationByDefaultProject(projectid);
//		moduleList = operationService.GetOperationListByIsShow();
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {// 循环json数组
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			String filed = ob.getString("fieldname");
			String englishname = ob.getString("englishname");
			String  value= URLDecoder.decode(request.getParameter(englishname),"UTF-8") ;
			sql1=sql1  +","+      filed +"='"+value+"' " ;
			
		}
		
		String sql=sql1+ "where bugid="+bugid ;
		System.out.println("adasdsadassssssssssssssssssssssssssssssssssssss"+sql);
		defectService.UpdataDefect(sql);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/delcase.do", method = RequestMethod.GET)
	public String DelCase(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int  bugid =Integer.parseInt(request.getParameter("bugid"));
		System.out.print( bugid +" bugid ");
		defectService.DelDefectByBugId(bugid);
		return"redirect:defectList.do";
//		return"redirect:module/usercenter/login.jsp";
}
	
	
	
	@RequestMapping(value = "/module/defect/AssignedMeDefect.do", method = RequestMethod.GET)
	public void Search(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		
		int userid =UserUtil.getCurrentUser().getUserid();
		moduleList = defectService.AssignedMeDefect(userid) ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
		
		
		
		
}
	
	
	
	
	
//	@RequestMapping(value = "/module/defect/delcase.do", method = RequestMethod.GET)
//	public String Actionaaa(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
//		int  bugid =Integer.parseInt(request.getParameter("bugid"));
//		System.out.print( bugid +" bugid ");
//		defectService.DelDefectByBugId(bugid);
//		return"redirect:defectList.do";
////		return"redirect:module/usercenter/login.jsp";
//}

	@RequestMapping(value = "/module/defect/GetAssigned", method = RequestMethod.GET)
	public void Actionaaaaa(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
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
	
	@RequestMapping(value = "/module/defect/CaseAssigned.do", method = RequestMethod.GET)
	public void Actionaaaaaaaa(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("bug CaseAssigned");
		int  assigned =Integer.parseInt(request.getParameter("assigned"));
		int  bugid =Integer.parseInt(request.getParameter("bugid"));
		defectService.CaseAssigned(bugid, assigned);
		AddCycle(bugid,"分配该问题");
	response.getWriter().write("ok");
	response.getWriter().flush();
}
	
	
	@RequestMapping(value = "/module/defect/DefectRefuse.do", method = RequestMethod.GET)
	public void Actionaaaaaaa(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("bug CaseAssigned");
		int  assigned =Integer.parseInt(request.getParameter("assigned"));
		int  bugid =Integer.parseInt(request.getParameter("bugid"));
		defectService.CaseAssigned(bugid, assigned);
		defectService.SetPstatus(5, bugid);
		AddCycle(bugid,"拒绝该问题");
	response.getWriter().write("ok");
	response.getWriter().flush();
}
	
	@RequestMapping(value = "/module/defect/Repair.do", method = RequestMethod.GET)
	public void Actionaaaaaaaaa(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int repair = Integer.parseInt(request.getParameter("repair"));
		int bugid = Integer.parseInt(request.getParameter("bugid"));
		defectService.CaseAssigned(bugid, repair);
		defectService.SetPstatus(2, bugid);
		AddCycle(bugid,"修复该问题");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/CloseDefect.do", method = RequestMethod.GET)
	public void Actionaaaaaaadaa(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int  bugid =Integer.parseInt(request.getParameter("bugid"));
		defectService.SetPstatus(3, bugid);
		AddCycle(bugid,"关闭该问题");
	response.getWriter().write("ok");
	response.getWriter().flush();
}
	
	public  void AddCycle(int bugid,String operation ){
		String ntime = DataFormat.DataTime();
		cycle.setNtime(ntime);
		cycle.setUserid(UserUtil.getCurrentUser().getUserid());
		cycle.setBugid(bugid);
		cycle.setOperation(operation);
		cycleService.AddCycle(cycle);
	}
	
	
	
	
	@RequestMapping(value = "/module/defect/SetPstatusAndAssigned.do", method = RequestMethod.GET)
	public void Actionaaaaaaadaaq(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int bugid = Integer.parseInt(request.getParameter("bugid"));
		int assigned = Integer.parseInt(request.getParameter("assigned"));
		int pastatus = Integer.parseInt(request.getParameter("pstatus"));
		defectService.SetPstatusAndAssignedByBugId(bugid, pastatus, assigned);
		if (pastatus == 1) {
			AddCycle(bugid, "关闭该问题");
		}
		if (pastatus == 2) {
			AddCycle(bugid, "关闭该问题");
		}
		if (pastatus == 3) {
			AddCycle(bugid, "关闭该问题");
		}
		if (pastatus == 4) {
			AddCycle(bugid, "关闭该问题");
		}
		if (pastatus == 5) {
			AddCycle(bugid, "拒绝该问题");
		}
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
}
