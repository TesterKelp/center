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
<script type="text/javascript" src="/laydate/laydate.js"></script> 

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>任务管理</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content">


				<div class="form-horizontal col-sm-10">
					<div class="form-group">
						<div class="col-sm-3"><input class="form-control" type="text" id="task" placeholder="任务名称" ></div>
						<div class="col-sm-3">
						<input  id="rtime"  class="form-control" onclick="laydate()" >
						</div>
						<div class="col-sm-1">
							<div class="btn btn-primary" id="test1" onclick="addTask()">创建任务</div>
						</div>
					</div>
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
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">任务ID</div><div class="fht-cell" style="width: 30px;"></div></th>
		
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner "></div><div class="fht-cell" style="width: 177px;">任务名称</div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">执行机</div><div class="fht-cell" style="width: 100px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">创建者</div><div class="fht-cell" style="width: 100px;"></div></th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">创建时间</div><div class="fht-cell" style="width: 150px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">运行时间</div><div class="fht-cell" style="width: 120px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">用例管理</div><div class="fht-cell" style="width: 150px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">执行状态</div><div class="fht-cell" style="width: 70px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">操作</div><div class="fht-cell" style="width: 177px;"></div></th>
<tr>							
									
									
<c:forEach items="${stTaskList}" var="a" varStatus="status">
<tr data-index="4">
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.taskid}</td>
<td style="text-align: left; vertical-align: middle; width: 10%; ">${a.taskname}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; "><input type="text" onBlur="setMac(${a.taskid},this)"      value="${a.clicentaddress}" placeholder=" 任务名称" style="width:180px" class="input-text">  </td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.realname} </td>
<td style="text-align: left; vertical-align: middle; width: 10%; ">${a.createtime}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.runnertime}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; "><A href="S_TaskDetail.do?taskid=${a.taskid}">用例管理 </A> </td>
<td style="text-align: center; vertical-align: middle; width: 10%; "><c:if test="${a.status=='0'}"><span class="label label-danger radius">未执行</span></c:if>  <c:if test="${a.status=='1'}"><span class="label label-warning radius">正在执行</span></c:if>  <c:if test="${a.status=='3'}"><span class="label label-primary radius">执行完毕</span></c:if></td>
<td style="text-align: center; vertical-align: middle; width: 10%; "> 	
  <c:if test="${a.status=='0'}"><a href="#" onclick="SetCaseTaskEnd(${a.taskid})" >设置执行完毕</a></c:if>  
					<c:if test="${a.status!='0'}"><a href="#" onclick="AginRunnerTask(${a.taskid})" > 在执行一次 </a></c:if> 
<a style="text-decoration:none" class="ml-5" onClick="article_del(this,'${a.taskid}')" href="javascript:;" title="删除"><i class="fa fa-remove"></i></a>
  </td>
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
laydate({
    elem: '#rtime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
    event: 'focus', //响应事件。如果没有传入event，则按照默认的click
    format: 'YYYY-MM-DD hh:mm:ss',
    	 istime: true, //是否开启时间选择
    
});
</script>

<script type="text/javascript">

function  setMac(taskid,input){

var	clicentaddress = input.value ;
	$.ajax({
		type : "POST",
		url : "/systemtest/UpdataTaskMac.do",
		data: {clicentaddress:clicentaddress,taskid:taskid},
		async : false,
		dataType : "text",
		success : function(data) {
			window.location.href=window.location.href;
		}
	});
	
}


function  AginRunnerTask(taskid){
	
	$.ajax({
		type : "POST",
		url : "/systemtest/AginRunnerTask.do",
		data: {taskid:taskid},
		async : false,
		dataType : "text",
		success : function(data) {
			window.location.href=window.location.href;
		}
	});
	
}

function  SetCaseTaskEnd(taskid){
	$.ajax({
		type : "POST",
		url : "/systemtest/SetCaseTaskEnd.do",
		data: {taskid:taskid},
		async : false,
		dataType : "text",
		success : function(data) {
			window.location.href=window.location.href;
		}
	});
	
}

function addTask(){
	alert("ddf");
	var task =document.getElementById("task").value;
	var rtime =document.getElementById("rtime").value;
	if(task==null||task.length==0){
		alert("please enter taskname");
		return false;
	}
	$.ajax({
		type : "POST",
		url : "/wift/WiftAddTask.do",
		data: {taskname:task,rtime:rtime},
		async : false,
		dataType : "text",
		success : function(data) {
			alert("ok");
			window.location.href=window.location.href;
		}
	});
	
}
</script>

</body>

</html>
