<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H+ 测试平台 - Bootstrap Table</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body class="gray-bg" onload="m()">
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>项目管理</h5>
				<div class="ibox-tools">

					<input type='hidden' class="form-control" id="operationid"> <input
						type='hidden' class="form-control" id="operationtype">
				</div>
			</div>
			<div class="ibox-content">

				<div class="form-horizontal col-sm-10">
					<div class="form-group">
						<label class="col-sm-2 control-label">项目名称:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" id="projectname">
						</div>
						<div class="col-sm-1">
							<div class="btn btn-primary"     onclick="CreateProject()">创建项目</div>
						</div>
					</div>
				</div>




				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">

										
	
										
						<table id="t8" data-mobile-responsive="true" data-height="500">
								</table>				
									
										
							</div>
						</div>
						<!-- End Example Pagination -->
					</div>

				</div>
			</div>
		</div>
		<!-- End Panel Other -->


	</div>




	<div id="ShowModuleScheme"  style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<input class="form-control"  id="projectId" type='hidden'  >
				<table id="t2" data-toggle="table" data-query-params="queryParams"
					data-mobile-responsive="true" data-pagination="true"
					data-icon-size="outline">
				</table>
			</form>
		</div>
	</div>
	</div>

<script >
function m(){
//alert("tt");
var url= "/module/defect/jsProject.do" ;
//alert(url);
var $table = $('#t8');
$table.bootstrapTable({
	url: url,
	pageSize: 10,
	dataType: "json",
	      columns: [
	              {
	                title: '项目ID',
	                  field: 'projectid',
	                  align: 'center',
	                  valign: 'middle',
	                	  width: '10%'
	              },
	              {
		                title: '项目名称',
		                  field: 'projectname',
		                  align: 'center',
		                  valign: 'middle',
		                	  width: '10%'
		              },
	              {
	                  title: '缺陷方案配置',
	                  align: 'center', 
	                  width: '10%' ,
	                  formatter:function(value,row,index){  	                     
	                		var f = '<a href="#" mce_href="#" onclick="setProjectDefectScheme('+row.defect_scheme_id+','+row.projectid+')">配置</a> '; 			                		 
		                	return f;  
	                       } 
	              },
	              {
	                  title: '用例方案配置',
	                  align: 'center', 
	                  width: '10%' ,
	                  formatter:function(value,row,index){  	                     
	                		var f = '<a href="#" mce_href="#" onclick="setProjectCaseScheme('+row.case_scheme_id+','+row.projectid+')">配置</a> '; 			                		 
		                	return f;  
	                       } 
	              }     
	          ]
	  });
}
</script >

<script >

function setProjectScheme(schemeId,fieldName){	
	var projectId = document.getElementById("projectId").value;
		$.ajax({
		type : "POST",
		url : "/module/defect/SetProjectScheme.do",
		data: {projectId:projectId,schemeId:schemeId,fieldName:fieldName},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			$('#t2').bootstrapTable('refresh');
		}
	});
}




function setProjectDefectScheme(scheme_id,projectId){
	document.getElementById("projectId").value=projectId ;
		var url= "/module/defect/GetSchemeListBySchemeType.do?schemeType=1" ;
		var $table = $('#t2');
		$table.bootstrapTable('destroy');
		$table.bootstrapTable({
			url: url,
			pageSize: 10,
			dataType: "json",
			      columns: [
			              {
			                title: '方案名称',
			                  field: 'scheme_name',
			                  align: 'center',
			                  valign: 'middle',
			                	  width: '10%'
			              },
			              {
			                  title: '操作名称',
			                  align: 'center', 
			                  width: '10%' ,
			                  formatter:function(value,row,index){  	                     
			                		 if(scheme_id==row.scheme_id){		                		 
				                		 var f = '<a href="#" mce_href="#" onclick="">该方方案为当前项目所选方案</a> ';			                		 
				                	 }else{
				                		 var f = '<a href="#" mce_href="#" onclick="setProjectScheme('+row.scheme_id+',\'defect_scheme_id\')">切换到该方案</a> '; 			                		 
				                	 }
			                           return f;  
			                       } 
			              }    
			          ]
			  });
	layer.open({
		title : '缺陷方案配置',
		//skin : 'layui-layer-molv',
		skin: 'layui-layer-rim', 
		type : 1,
		area : [ '850px', '600px' ],
	//	shadeClose : true, // 点击遮罩关闭
		content : $('#ShowModuleScheme'),
	});
}  
function setProjectCaseScheme(scheme_id,projectId){
	document.getElementById("projectId").value=projectId ;
	var url= "/module/defect/GetSchemeListBySchemeType.do?schemeType=3" ;
	var $table = $('#t2');
	$table.bootstrapTable('destroy');
	$table.bootstrapTable({
		url: url,
		pageSize: 10,
		dataType: "json",
		      columns: [
		              {
		                title: '方案名称',
		                  field: 'scheme_name',
		                  align: 'center',
		                  valign: 'middle',
		                	  width: '10%'
		              },
		              {
		                  title: '操作名称',
		                  align: 'center', 
		                  width: '10%' ,
		                  formatter:function(value,row,index){  
		                	 if(scheme_id==row.scheme_id){
		                		 var f = '<a href="#" mce_href="#" onclick="">该方方案为当前项目所选方案</a> ';	 
		                	 }else{
		                		 
		                		 var f = '<a href="#" mce_href="#" onclick="">切换到该方案</a> '; 	 
		                	 }
		                           return f;  
		                       } 
		              }    
		          ]
		  });
layer.open({
	title : '用例方案配置',
	//skin : 'layui-layer-molv',
	skin: 'layui-layer-rim', 
	type : 1,
	area : [ '850px', '600px' ],
//	shadeClose : true, // 点击遮罩关闭
	content : $('#ShowModuleScheme'),
});
}  

</script >

<script >

function  CreateProject(){
	var projectname = document.getElementById("projectname").value;
	if(projectname.trim() ==""){
		alert("请输入项目名称");
	}else{
	alert(projectname);
	var url="/module/defect/CreatProject.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {projectname:projectname},
		dataType : "json",
		success : function(result) {
			window.location.href=window.location.href;
		}
	});
	}
}
</script>












	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../layer/layer.js"></script>
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<!-- Bootstrap table -->
	<script src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
</body>
</html>