<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H+ 测试平台 - Bootstrap Table</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>项目管理</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content">
<div class="form-horizontal col-sm-10">



		<div class="form-group">
												<label class="col-sm-1 control-label">所属项目:</label>
												<div class="col-sm-2">
													<select class="form-control" id="project"
														onchange='getmodule()'>
														<option value="0">系统分类</option>
														<option value="1">分享分类</option>
													</select>
												</div>
												<label class="col-sm-1 control-label">所属模块:</label>
												<div class="col-sm-2">
													<select class="form-control" id="module"
														onchange='getInterface()'>
														<option value="0">all</option>
														
													</select>
												</div>
												
												
												<label class="col-sm-1 control-label">所属接口:</label>
												<div class="col-sm-2">
													<select class="form-control" id="InterfaceSelect"  onchange='getInterfaceInfo()'>
														<option value="0">all</option>
													</select>
												</div>
											
												<div class="col-sm-1">
							<input type="hidden" name="" id="taskid" placeholder=" 任务名称"  value="${taskid}" style="width:250px" class="input-text">
							<div class="btn btn-primary" id="test1" onclick="addCaseToTask()">将下用例添加到本次任务中</div>
						</div>
												
												
												
												
												
												
												
												
											</div>






</div>



<!--  

				<div class="form-horizontal col-sm-10">
					<div class="form-group">
					<div class="col-sm-2"><select class="form-control m-b" name="project"   id= "project"   onchange="getModule()" >
					<auto:ProjectSelect></auto:ProjectSelect></select></div>
					<div class="col-sm-2">
					
						 <select class="form-control m-b" name="module" id="module"  style="WIDTH: 150px">
					<auto:ModuleSelect></auto:ModuleSelect>
			</select>
					
					</div>

						<div class="col-sm-1">
							<input type="hidden" name="" id="taskid" placeholder=" 任务名称"  value="${taskid}" style="width:250px" class="input-text">
							<div class="btn btn-primary" id="test1" onclick="addCaseToTask()">将下用例添加到本次任务中</div>
						</div>
					</div>
				</div>

-->











<div class="col-sm-3">
							<div class="btn btn-primary" onclick="DelCaseFromTask(${taskid})" >移除选中用例</div>
		</div>

		<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">
		<table id="t3" data-toggle="table"
									data-query-params="queryParams" data-mobile-responsive="true"
									data-height="500" data-pagination="true"
									data-icon-size="outline">
									<tr>
<th style="text-align: center; vertical-align: middle; width: 2%; " data-field="operationid" tabindex="0">
<div class="th-inner ">选项</div><div class="fht-cell" style="width: 30px;"></div></th>
		
<th style="text-align: center; vertical-align: middle; width: 5%; " data-field="operationid" tabindex="0">
<div class="th-inner "></div><div class="fht-cell" ">用例ID</div></th>

<th style="text-align: center; vertical-align: middle; width: 15%; " data-field="operationid" tabindex="0">
<div class="th-inner ">用例名称</div><div class="fht-cell" style="width: 100px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 18%; " data-field="operationid" tabindex="0">
<div class="th-inner ">用例描述</div><div class="fht-cell" style="width: 100px;"></div></th>

<!--  
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">用例状态</div><div class="fht-cell" style="width: 450px;"></div></th>
-->
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">创建者</div><div class="fht-cell" style="width: 120px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">任务名称</div><div class="fht-cell" style="width: 150px;"></div></th>

<tr>							
									
									
<c:forEach items="${caseList}" var="a" varStatus="status">
<tr data-index="4">
<td style="text-align: center; vertical-align: middle; width: 2%; "><input type="checkbox" value="${a.interface_case_id}" id="caseid" name="caseid"></td>
<td style="text-align: left; vertical-align: middle; width: 2%; ">${a.interface_case_id}</td>
<td style="text-align: center; vertical-align: middle; width: 18%; ">${a.interface_case_name}</td>
<td style="text-align: center; vertical-align: middle; width: 18%; ">${a.interface_case_desc} </td>
<!-- <td style="text-align: left; vertical-align: middle; width: 10%; ">

<c:if test="${a.status == 0}">  <span class="label label-danger radius"  onClick="SetCaseIsSuccessfully(${a.caseid})"   >未调试</span>   </c:if>
					<c:if test="${a.status == 1}">	<span class="label label-success radius">调试成功</span></c:if>
	 							
</td>-->
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.realname}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.taskname}</td>
</tr>
					
</c:forEach>
















							</div>
						</div>
						<!-- End Example Pagination -->
					</div>


				</div>
			</div>
		</div>
		<!-- End Panel Other -->


	</div>

















	<div id="ShowModule" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">

				<div class="form-group">
					<label class="col-sm-2 control-label">模块名称：</label>
					<div class="col-sm-5">
						<input type="text" id="modulename" class="form-control">
					</div>
					<div class="col-sm-2">
						<div onclick="AddModule()" class="btn btn-primary">添加</div>
					</div>
					<div class="col-sm-2">
						<input type="text" class="form-control" id="projectid">

					</div>
				</div>

				<table id="t2" data-toggle="table" data-query-params="queryParams"
					data-mobile-responsive="true" data-pagination="true"
					data-icon-size="outline">

				</table>



			</form>
		</div>

	</div>












	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../layer/layer.js"></script>




























	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>


	<!-- Bootstrap table -->
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="js/project.js"></script>


	<!-- Peity      -->
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->




<script>

function DelCaseFromTask(taskid){
	
	//alert(taskid);
	var els =document.getElementsByName("caseid");
	var _list = [];  
	var j=0;
	for (var i = 0; i < els.length; i++) {  
		if(els[i].checked==true){
			_list[j] = els[i].value;  
		//	alert("已被选中！");
			j++ ;
		}
	}  
	$.ajax({
	    		type : "POST",
	    		url : "/systemtest/DelCaseFromTask.do",
	    		data: {"els":_list,"taskid":taskid},
	    		async : false,
	    		dataType : "text",
	    		 traditional: true,
	    		success : function(data) {
	    			
	    			alert(data);
	    			window.location.href=window.location.href ;
	    		}
	    	});
}

function addCaseToTask(){
	alert("1111");
	var selectIndex = document.getElementById("project").selectedIndex;//获得是第几个被选中了
	var projectid = document.getElementById("project").options[selectIndex].value;
	
	var selectI = document.getElementById("module").selectedIndex;//获得是第几个被选中了
	var moduleid = document.getElementById("module").options[selectI].value;
	
	var selec = document.getElementById("InterfaceSelect").selectedIndex;//获得是第几个被选中了
	var interfaceid = document.getElementById("InterfaceSelect").options[selec].value;
	
	var taskid = document.getElementById("taskid").value ;
		$.ajax({
			type : "POST",
			url : "/wift/AddCaseToTask.do",
			data: {projectid:projectid ,moduleid:moduleid ,interfaceid:interfaceid ,  taskid:taskid},
			async : false,
			dataType : "text",
			success : function(data) {
				alert(data);
				//document.getElementById("module").innerHTML=data ;
				window.location.href=window.location.href ;
			}
		});	
}








	$.ajax({
		type : "GET",
		url : "/wift/GetProjectSelect.do",
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("project").innerHTML = data ;
		}
	});

function getmodule(){
var projectSelect=document.getElementById("project");  
var index=projectSelect.selectedIndex;
var projectid=projectSelect.options[index].value ;
$.ajax({
type : "GET",
url : "/wift/GetModuleSelect.do",
data: {projectid: projectid},
async : false,
dataType : "text",
success : function(data) {
	document.getElementById("module").innerHTML = data ;
}
});		
}	

function getInterface(){
var moduleSelect=document.getElementById("module");  
var index=moduleSelect.selectedIndex;
var moduleid=moduleSelect.options[index].value ;
$.ajax({
type : "GET",
url : "/wift/GetInterfaceSelect.do",
data: {moduleid: moduleid},
async : false,
dataType : "text",
success : function(data) {
	document.getElementById("InterfaceSelect").innerHTML = data ;
}
});		
}	
















</script>










</body>

</html>
