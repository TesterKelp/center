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
				<h5>用例管理</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content">


			

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
<div class="th-inner ">用例ID</div><div class="fht-cell" style="width: 30px;"></div></th>
		
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner "></div><div class="fht-cell" style="width: 177px;">用例名称</div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">用例描述</div><div class="fht-cell" style="width: 100px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">用例状态</div><div class="fht-cell" style="width: 100px;"></div></th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">所属模块</div><div class="fht-cell" style="width: 150px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">所属项目</div><div class="fht-cell" style="width: 120px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">用例详情</div><div class="fht-cell" style="width: 150px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">创建者</div><div class="fht-cell" style="width: 70px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">操作</div><div class="fht-cell" style="width: 177px;"></div></th>
<tr>							
									
									
<c:forEach items="${caseList}" var="a" varStatus="status">
<tr data-index="4">
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.caseid}</td>
<td style="text-align: left; vertical-align: middle; width: 10%; ">${a.casename}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.casedesc}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">
<c:if test="${a.status == 0}">  <span class="label label-danger radius"  onClick="SetCaseIsSuccessfully(${a.caseid})"   >设置为调试成功</span>   </c:if>
					<c:if test="${a.status == 1}">	<span class="label label-success radius">调试成功</span></c:if>
 </td>
<td style="text-align: left; vertical-align: middle; width: 10%; ">${a.modulename}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.projectname} </td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">
<a href="S_CaseDetail.do?caseid=${a.caseid}" >编辑</a>  
<a href="Web_CaseDetail_Data.do?caseid=${a.caseid}" >业务模型</a>  
 </td>





<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.realname}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; "> 	

<a   href="S_CaseDetail.do?caseid=${a.caseid}" title="编辑"><i class="fa fa-edit"></i></a> 
<a onClick="delCase(${a.caseid})" href="javascript:;" title="删除"><i class="fa fa-remove"></i></a>
<a onClick="RunnerCase(${a.caseid})" href="javascript:;" title="运行"><i class="fa fa-play-circle-o"></i></a>
					 
 
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



<script type="text/javascript">


function RunnerCase(caseid){

	$.ajax({
		type : "POST",
		url : "RunnerCase.do",
		data : {
			caseid : caseid
		},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
		}
	});

}



function SetCaseIsSuccessfully(caseid){

	$.ajax({
		type : "POST",
		url : "SetStCaseIsSuccessfully.do",
		data : {
			caseid : caseid
		},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			location.replace(location.href)
		}
	});
}








function delCase(caseid){
	
	$.ajax({
		type : "POST",
		url : "DelStCase.do",
		data : {
			caseid : caseid
		},
		async : false,
		dataType : "text",
		success : function(data) {
		//	alert(data);
		location.replace(location.href);
		}
	});
	
	
	
}
</script> 









</body>

</html>
