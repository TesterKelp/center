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
					<div class="col-sm-2"><select class="form-control m-b" name="project"   id= "project"   onchange="getPage()" >
					<auto:ProjectSelect></auto:ProjectSelect></select></div>
					<div class="col-sm-2"><select class="form-control m-b" name="module" id="page"  style="WIDTH: 150px" ><auto:PageSelect></auto:PageSelect></select></div>
					<div class="col-sm-1"><select  class="form-control m-b" id="widgetmethod">
			<option value="ID">id</option>
			<option value="Name">Name</option>
			<option value="ClassName">ClassName</option>
			<option value="CssSelector">CssSelector</option>
			<option value="Xpath">xpath</option>
			<option value="Link">Link</option>
			<option value="TagName">TagName</option>
			<option value="PartialLinkText">PartialLinkText</option>
		</select></div>
						<div class="col-sm-3"><input class="form-control" type="text" id="widgetname" placeholder="组件名称" ></div>
						<div class="col-sm-3"><input class="form-control" type="text" id="widgetsole" placeholder="组件标识" ></div>
						<div class="col-sm-1">
							<div class="btn btn-primary" id="test1" onclick="addWidget()">加入组监库</div>
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
<div class="th-inner ">组件ID</div><div class="fht-cell" style="width: 30px;"></div></th>
		
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner "></div><div class="fht-cell" style="width: 177px;">组件名称</div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">组件状态</div><div class="fht-cell" style="width: 100px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">识别方式</div><div class="fht-cell" style="width: 100px;"></div></th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">标识</div><div class="fht-cell" style="width: 450px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">所属项目</div><div class="fht-cell" style="width: 120px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">所属模块</div><div class="fht-cell" style="width: 150px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">创建者</div><div class="fht-cell" style="width: 70px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">操作</div><div class="fht-cell" style="width: 177px;"></div></th>
<tr>							
									
									
<c:forEach items="${widgetList}" var="a" varStatus="status">
<tr data-index="4">
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.widgetid}</td>
<td style="text-align: left; vertical-align: middle; width: 10%; ">${a.widgetname}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">	<c:if test="${a.widgetstatus == 0}">  <span class="label label-danger radius"    >未调试</span>   </c:if>
					<c:if test="${a.widgetstatus == 1}">	
					
					<small class="label label-info">调试成功</small>
					
					
					</c:if></td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.widgetmethod} </td>
<td style="text-align: left; vertical-align: middle; width: 10%; ">${a.widgetsole}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.projectname}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.pagename}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.realname}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; "> 	

<a onClick="article_edit('资讯编辑','/systemtest/widgetedit.do?widgetid=${a.widgetid}','10001')" href="javascript:;" title="编辑"><i class="fa fa-pencil"></i></a>
<a style="text-decoration:none" class="ml-5" onClick="article_del(this,'${a.widgetid}')" href="javascript:;" title="删除"><i class="fa fa-remove"></i></a> 


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

function addWidget(){

	var selectIndex = document.getElementById("project").selectedIndex;
	var projectid = document.getElementById("project").options[selectIndex].value;
	var selectI = document.getElementById("page").selectedIndex;
	var pageid = document.getElementById("page").options[selectI].value
	var select = document.getElementById("widgetmethod").selectedIndex;
	var widgetmethod = document.getElementById("widgetmethod").options[select].value;
	var widgetname =document.getElementById("widgetname").value ;
	var widgetsole =document.getElementById("widgetsole").value ;
	if(widgetsole==""|| widgetsole==null||widgetname==""|| widgetname==null){
		layer.msg('请输入组件标示或组件名称');
	}else{
		$.ajax({
			type : "POST",
			url : "/systemtest/AddWidget.do",
			data: {projectid:projectid,pageid:pageid,widgetname:widgetname,widgetmethod:widgetmethod,widgetsole:widgetsole},
			async : false,
			dataType : "text",
			success : function(data) {
				alert(data);
				window.location.href=window.location.href ;
			}
		});	
	}

}




function getPage(){
	var selectIndex = document.getElementById("project").selectedIndex;//获得是第几个被选中了
	var projectid = document.getElementById("project").options[selectIndex].value;
	//alert(projectid);
	$.ajax({
		type : "POST",
		url : "/systemtest/GetPageSelect.do",
		data: {projectid:projectid},
		async : false,
		dataType : "text",
		success : function(data) {
		//	alert(data);
			document.getElementById("page").innerHTML=data ;
		}
	});
}






function getModule(){
	var selectIndex = document.getElementById("project").selectedIndex;//获得是第几个被选中了
	var projectid = document.getElementById("project").options[selectIndex].value;
	//alert(projectid);
	$.ajax({
		type : "POST",
		url : "/systemtest/GetModuleSelect.do",
		data: {projectid:projectid},
		async : false,
		dataType : "text",
		success : function(data) {
		//	alert(data);
			document.getElementById("module").innerHTML=data ;
		}
	});
}



function article_edit(title, url, id, w, h) {
	layer.open({
		  type: 2,
		  title: '编辑组件',
		  shadeClose: true,
		  shade: 0.8,
		  area: ['600px', '60%'],
		  content: url //iframe的url
		}); 
}	







</script>










</body>

</html>
