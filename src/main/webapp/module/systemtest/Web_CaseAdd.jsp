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
<link rel="stylesheet" href="../../test/t/select2.css" type="text/css">
<link rel="stylesheet" href="../../test/t/select2.min.css" type="text/css">
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>设计用例</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content">


				<div class="form-horizontal col-sm-10">
					<div class="form-group">
					<div class="col-sm-2"><select class="form-control m-b" name="project"   id= "project"   onchange="getModule()" >
					<auto:ProjectSelect></auto:ProjectSelect></select></div>
					<div class="col-sm-2">
						 <select class="form-control m-b" name="module" id="module"  style="WIDTH: 150px">
					 <auto:ModuleSelect></auto:ModuleSelect>
			   </select>
					
					</div>

						<div class="col-sm-2">
							<input class="form-control" type="text" id="casename"
								placeholder="用例名称">
						</div>
						<div class="col-sm-2">
							<input class="form-control" type="text" id="casedesc"
								placeholder="用例描述">
						</div>
						<div class="col-sm-1">
							<div class="btn btn-primary" onclick="addCase()">保存</div>
						</div>
					</div>
				</div>


				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">
							
							
							
							
									<table  id="dd"  name=""  >
		<tr class="text-c" id="b1"  style="visibility:hidden"  > <!--  style="visibility:hidden" -->
					<td><select class="select"   id="operation"    name="operation"  style="width: 200px"><auto:OperationSelect></auto:OperationSelect> </select></td>
					<td><select class="multiSelect"    id="widget"  style="width: 200px"><auto:WidgetSelect></auto:WidgetSelect></select></td>
					<td><input type="text" name="" id="pdata" placeholder="数据项" style="width: 450px" class="input-text"></td>
					<td><select class="select"  id="checkpoint"   name="checkpoint" style="width: 100px">
							<option value="no" selected = 'selected' >无</option>
							<option value="equal">等于</option>
							<option value="contain">包括</option>
							<option value="unequal">不包括</option>
					</select></td>
					<td class="f-14 td-manage">
						<a  onClick="AdddBefore(this)" href="javascript:;" title="编辑"><i class="fa fa-backward"></i> </a>

						<a  onClick="DelTr(this)" href="javascript:;" title="删除"><i class="fa fa-remove"></i> </a>
						
						<a  onClick="AdddAfter(this)" href="javascript:;" title="编辑"><i class="fa fa-forward"></i> </a> </td>
				</tr>
		</table>
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
		<table id="t3" data-toggle="table"
									data-query-params="queryParams" data-mobile-responsive="true"
									data-height="500" data-pagination="true"
									data-icon-size="outline">
									<tr>
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">操作</div><div class="fht-cell" style="width: 30px;"></div></th>
		
<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">组件</div><div class="fht-cell" style="width: 177px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">数据</div><div class="fht-cell" style="width: 100px;"></div></th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">检查点</div><div class="fht-cell" style="width: 100px;"></div></th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">操作</div><div class="fht-cell" style="width: 150px;"></div></th>

						
									
									
<tr  id ="c1"></tr>
















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


<script type="text/javascript" src="../../test/t/select2.min.js"></script>
<script type="text/javascript">
function getModule() {
	var selectIndex = document.getElementById("project").selectedIndex;//获得是第几个被选中了
	var projectid = document.getElementById("project").options[selectIndex].value;
	//alert(projectid);
	$.ajax({
		type : "POST",
		url : "GetModuleSelect.do",
		data : {
			projectid : projectid
		},
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("module").innerHTML = data;
		}
	});
}
for(j=0;j<5;j++){
	
	AdddS();
}
		function AdddS() {
			var yo = document.getElementById("widget");
			yo.setAttribute("class", "multiSelect"); 
			var i = 1;
			var o = document.getElementById("b1");
			var c = document.getElementById("c1");
			var newTR = o.cloneNode(true);
			var yyo = document.getElementById("widget");
			yyo.setAttribute("class", "abc"); 
			c.parentNode.appendChild(newTR);
			$(".multiSelect").select2();
			newTR.style.visibility="visible";
		}


		function AdddAfter(s){
			var yo = document.getElementById("widget");
			yo.setAttribute("class", "multiSelect"); 
			var i = 1;
			var o = document.getElementById("b1");
			var c = document.getElementById("c1");
			var newTR = o.cloneNode(true);
			var yyo = document.getElementById("widget");
			yyo.setAttribute("class", "abc"); 
			var i = s.parentNode.parentNode.rowIndex;
			 if (c.parentNode.lastChild == s.parentNode.parentNode) {
		          c.parentNode.appendChild(newTR);
		        } else {
		          c.parentNode.insertBefore(newTR,s.parentNode.parentNode.nextSibling);
		        }
			$(".multiSelect").select2();
			newTR.style.visibility="visible";
			}

		function AdddBefore(s){
			var yo = document.getElementById("widget");
			yo.setAttribute("class", "multiSelect"); 
			var i = 1;
			var o = document.getElementById("b1");
			var c = document.getElementById("c1");
			var newTR = o.cloneNode(true);
			var yyo = document.getElementById("widget");
			yyo.setAttribute("class", "abc"); 
			var i = s.parentNode.parentNode.rowIndex;
			c.parentNode.insertBefore(newTR,s.parentNode.parentNode);
			$(".multiSelect").select2();
			newTR.style.visibility="visible";
			}

		function DelTr(r)  {
			var i=r.parentNode.parentNode.rowIndex;
			document.getElementById('myTable').deleteRow(i);	
		}
		
		</script>

<script type="text/javascript">








function addCase(){
	
	$('#dd').remove(); 
	
	var _operationvalue = []; 
	var i=0 ;
	$("select[id='operation']").each(function(){
	    _operationvalue[i] = $(this).val() ;
		 i++ ;
	 });
	
	var _widgetidall = []; 
	var j=0 ;
	$("select[id='widget']").each(function(){
	    _widgetidall[j] = $(this).val() ;
		 j++ ;
	 });
	
	var _checkpointall = []; 
	var k=0 ;
	$("select[id='checkpoint']").each(function(){
	    _checkpointall[k] = $(this).val() ;
		 k++ ;
	 });
	
	var _pdataall = []; 
	var f=0 ;
	$("input[id='pdata']").each(function(){
	    _pdataall[f] = $(this).val() ;
		 f++ ;
	 });
	
//	for (var i = 0; i < _operationvalue.length; i++) {  
//			alert(_operationvalue[i]+"=="+_widgetidall[i]+"=="+ _checkpointall[i]+"=="+ _pdataall[i]);
//	}

	var se = document.getElementById("project").selectedIndex;//获得是第几个被选中了
	var projectid = document.getElementById("project").options[se].value;
	var sel = document.getElementById("module").selectedIndex;//获得是第几个被选中了
	var moduleid = document.getElementById("module").options[sel].value;
	var casename =document.getElementById("casename").value ;
	var casedesc =document.getElementById("casedesc").value ;
	$.ajax({
		type : "POST",
		url : "/systemtest/AddStCase.do",
	data : {
				"projectid" : projectid,
				"moduleid" : moduleid,
				"casename" : casename,
				"casedesc" : casedesc,
				"operationvalue" : _operationvalue,
				"widgetidall" : _widgetidall,
				"checkpointall" : _checkpointall,
				"pdataall":_pdataall
			},
			async : false,
			dataType : "text",
			 traditional: true,
			success : function(data) {
				alert(data);
				//document.getElementById("module").innerHTML=data ;
				window.location.href = window.location.href;
			}
		});

	}
</script>








</body>

</html>
