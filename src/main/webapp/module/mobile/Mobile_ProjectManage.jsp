<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
						<label class="col-sm-1 control-label">项目名称:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" id="projectname">
						</div>
						<div class="col-sm-1">
							<div class="btn btn-primary" id="test1" onclick="addProject()">创建项目</div>
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
<div class="th-inner ">ID</div><div class="fht-cell" style="width: 177px;"></div></th>
		
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner "></div><div class="fht-cell" style="width: 177px;">项目名称</div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">创建者</div><div class="fht-cell" style="width: 177px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">页面</div><div class="fht-cell" style="width: 177px;"></div></th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">模块</div><div class="fht-cell" style="width: 177px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">创建时间</div><div class="fht-cell" style="width: 177px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">操作</div><div class="fht-cell" style="width: 177px;"></div></th>
<tr>							
									
									
<c:forEach items="${stProjectList}" var="a" varStatus="status">
<tr data-index="4">
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.projectid}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.projectname }</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.realname}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; "><a href="#"   onClick="showPage(${a.projectid})">页面管理</a> </td>
<td style="text-align: center; vertical-align: middle; width: 10%; "><a href="#"   onClick="showModule(${a.projectid})">模块管理</a></td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.createtime}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; "> 	

<a href="#"   onClick="delProject(${a.projectid})">删除</a>     



</td>
</tr>
					
</c:forEach>
					
									
									
									
									
									
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

















	<div id="ShowModule" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">

				<div class="form-group">
					<label class="col-sm-2 control-label">模块名称：</label>
					<div class="col-sm-5">
						<input type="text" id="modulename" class="form-control">
					</div>
					<div class="col-sm-2">
						<div onclick="addModule()" class="btn btn-primary">添加</div>
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



<div id="ShowPage" style="display: none">
                    <div class="ibox-content">
                     
<br>
                            <div class="form-group"> 
                                   <label class="col-sm-4 control-label">页面名称</label>
                                <div class="col-sm-4"> 
                                   <input type="text" id="pagename" class="form-control"> 
                               </div>
                               <div class="col-sm-1"> </div>
                                <div class="col-sm-2"> 
                              	<a class="btn btn-primary radius" data-title="添加资讯" _href="#" onclick="addPage()" href="javascript:;"> 创建页面</a></span>
                               </div>
                            </div>

                            <div class="form-group"> 
                                  
                               <div class="col-sm-1"> 
                                   <input type="hidden" class="form-control" id="pageprojectid"> 
                               </div>
                            </div>
                   
                     </div> 

						    <div class="col-sm-12"> 
                      <table id="t1" class="table table-striped table-bordered"  data-toggle="table"  data-query-params="queryParams" data-mobile-responsive="true"  data-pagination="true" data-icon-size="outline" >
  							  </table>
						 </div> 
						 
</div>








	<!-- 全局js -->
	<script src="/test/js/jquery.min.js?v=2.1.4"></script>
	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/layer/layer.js"></script>
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<!-- Bootstrap table -->
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>


	<!-- Peity      -->
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>







	


<script type="text/javascript">


function addProject(){
	var projectname =document.getElementById("projectname").value ;
	$.ajax({
		type : "POST",
		url : "/systemtest/AddProject.do",
		data: {projectname: projectname},
		async : false,
		dataType : "text",
		success : function(data) {
		//	alert(data);
			window.location.href=window.location.href ;
		}
	});
	
}

function addModule(){
	var projectid =document.getElementById("projectid").value ;
	var modulename =document.getElementById("modulename").value ;
	$.ajax({
		type : "POST",
		url : "/systemtest/Addmodule.do",
		data: {modulename: modulename,projectid:projectid},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			$('#t2').bootstrapTable('refresh');
		}
	});
	
}



function showModule(projectid){

	document.getElementById("projectid").value =projectid ;
				var url= "/systemtest/getModuleByProjectId.do?projectid="+projectid ;
			//	alert(url);
		var $table = $('#t2');
		$table.bootstrapTable('destroy');
		$table.bootstrapTable({
			url: url,
			pageSize: 10,
			dataType: "json",
			      columns: [
			              {
			                title: '模块',
			                  field: 'modulename',
			                  align: 'center',
			                  valign: 'middle',
			                	  width: '10%'
			              },
			              {
			                  title: '操作名称',
			                  align: 'center', 
			                  width: '10%' ,
			                  formatter:function(value,row,index){  
			                      var f = '<a href="#" mce_href="#" onclick="delModule(\''+row.moduleid +'\')">删除</a> ';
			                           return f;  
			                       } 
			              }    
			          ]
			  });
	layer.open({
		title : '模块管理',
		//skin : 'layui-layer-molv',
		skin: 'layui-layer-rim', 
		type : 1,
		area : [ '850px', '600px' ],
	//	shadeClose : true, // 点击遮罩关闭
		content : $('#ShowModule'),
	});
}  



function  delModule(moduleid){
	$.ajax({
		type : "POST",
		url : "DelModule.do",
		data: {moduleid:moduleid},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			$('#t1').bootstrapTable('refresh');
		}
	});
}


function showPage(projectid){
//	alert("dd");
	document.getElementById("pageprojectid").value =projectid ;
				var url= "/systemtest/getPageByProjectId.do?projectid="+projectid ;
				//alert(url);
		var $table = $('#t1');
		$table.bootstrapTable('destroy');
		$table.bootstrapTable({
			url: url,
			pageSize: 10,
			dataType: "json",
			      columns: [
			              {
			                title: '模块',
			                  field: 'pagename',
			                  align: 'center',
			                  valign: 'middle',
			                	  width: '10%'
			              },
			              {
			                  title: '操作名称',
			                  align: 'center', 
			                  width: '10%' ,
			                  formatter:function(value,row,index){  
			                      var f = ' <shiro:hasPermission name="/AddProject.do"> '  ;
			                      
			                     var  c= ' <a href="#" mce_href="#" onclick="delPage(\''+row.pageid +'\')">删除11</a>  ';
			                     
			                     if(row.pageid==1){
			                    	 
			                    	  return c +'第一天';
			                     }else{
			                    	 
			                    	  return c ; 
			                     }
		
			                    var b ='  </shiro:hasPermission>';
			                            
			                       } 
			              }    
			          ]
			  });
	layer.open({
		title : '页面管理',
		//skin : 'layui-layer-molv',
		skin: 'layui-layer-rim', 
		type : 1,
		area : [ '850px', '600px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowPage'),
	});
} 

function  delPage(pageid){
	$.ajax({
		type : "POST",
		url : "/systemtest/DelPage.do",
		data: {pageid:pageid},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			$('#t2').bootstrapTable('refresh');
		}
	});
}



function addPage(){
	var projectid =document.getElementById("pageprojectid").value ;
	var pagename =document.getElementById("pagename").value ;
	if(pagename.length==0){
		alert("请输入页面名称");
	}else{
	$.ajax({
		type : "POST",
		url : "Addpage.do",
		data: {pagename: pagename,projectid:projectid},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			$('#t1').bootstrapTable('refresh');
		}
	});
	}
	
	
}






function  delProject(projectid){
	$.ajax({
		type : "POST",
		url : "/systemtest/DelProject.do",
		data: {projectid:projectid},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			location.replace(location.href);
		}
	});
}




</script>










</body>

</html>
