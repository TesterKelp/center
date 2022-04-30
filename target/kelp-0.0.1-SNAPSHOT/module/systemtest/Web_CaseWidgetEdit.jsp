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
<link rel="stylesheet" href="/t/select2.css" type="text/css">
<link rel="stylesheet" href="/t/select2.min.css" type="text/css">
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			
			<div class="ibox-content">

				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">



	<div class="col-sm-2">
<label class="col-sm-1 control-label">所属项目：</label>						
<select class="form-control m-b"  name="project"   id= "project"   onchange="getModule()" style="WIDTH: 150px" >
					<auto:ProjectSelectDefault   projectid="${projectid}"></auto:ProjectSelectDefault>
			</select>
						</div>



	<div class="col-sm-2">
<label class="col-sm-1 control-label">所属页面：</label>						
<select class="form-control m-b" name="module" id="page"  style="WIDTH: 150px" >
					<auto:PageSelectDefault  pageid="${pageid}" projectid="${projectid}"></auto:PageSelectDefault>
			</select>
						</div>

<div class="col-sm-2">
<label class="col-sm-1 control-label">组件方法：</label>
<select name="" class="form-control m-b" id="widgetmethod">
			<option value="ID"  <c:if test="${widgetmethod=='ID'}"> selected = 'selected'</c:if> >id</option>
			<option value="Name" <c:if test="${widgetmethod=='Name'}"> selected = 'selected'</c:if> >Name</option>
			<option value="ClassName" <c:if test="${widgetmethod=='ClassName'}"> selected = 'selected'</c:if> >ClassName</option>
			<option value="CssSelector" <c:if test="${widgetmethod=='CssSelector'}"> selected = 'selected'</c:if> >CssSelector</option>
			<option value="Xpath" <c:if test="${widgetmethod=='Xpath'}"> selected = 'selected'</c:if>>xpath</option>
			<option value="Link" <c:if test="${widgetmethod=='Link'}"> selected = 'selected'</c:if>>Link</option>
			<option value="TagName" <c:if test="${widgetmethod=='TagName'}"> selected = 'selected'</c:if>>TagName</option>
			<option value="PartialLinkText" <c:if test="${widgetmethod=='PartialLinkText'}"> selected = 'selected'</c:if>>PartialLinkText</option>
		</select>
</div>

<div class="col-sm-2">
<label class="col-sm-1 control-label">组件名称：</label>
		<input type="text" name="" id="widgetname"  value="${widgetname}" placeholder="组件名称" style="width:250px" class="form-control m-b">
	</div>


<div class="col-sm-2">
<label class="col-sm-1 control-label">组件标识：</label>
		<input type="text" name="" id="widgetsole"   value="${widgetsole}"   placeholder="组件标识" style="width:250px" class="form-control m-b">
	</div>

	<div class="col-sm-2">
		<input type="hidden" name="" id="widgetid"   value="${widgetid}"   placeholder="组件标识" style="width:250px" class="form-control m-b">
	</div>
<div class="col-sm-2">
	<button name="" id=""  onclick="editWidget()" class="btn btn-success" type="submit"><i class="fa fa-pencil"></i> 编辑组件</button>



							</div>
						</div>
						<!-- End Example Pagination -->
					</div>


				</div>
			</div>
		</div>
		<!-- End Panel Other -->


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
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>
<script type="text/javascript" src="/t/select2.min.js"></script>
<script type="text/javascript">

function editWidget(){
	var selectIndex = document.getElementById("project").selectedIndex;
	var projectid = document.getElementById("project").options[selectIndex].value;
	var selectI = document.getElementById("page").selectedIndex;
	var pageid = document.getElementById("page").options[selectI].value
	var select = document.getElementById("widgetmethod").selectedIndex;
	var widgetmethod = document.getElementById("widgetmethod").options[select].value;
	var widgetname =document.getElementById("widgetname").value ;
	var widgetsole =document.getElementById("widgetsole").value ;
	var widgetid =document.getElementById("widgetid").value ;
	
	if(widgetsole==""|| widgetsole==null||widgetname==""|| widgetname==null){
		layer.msg('请输入组件标示或组件名称');
	}else{
		$.ajax({
			type : "POST",
			url : "/systemtest/SaveEditWidget.do",
			data: {projectid:projectid,pageid:pageid,widgetname:widgetname,widgetmethod:widgetmethod,widgetsole:widgetsole,widgetid:widgetid},
			async : false,
			dataType : "text",
			success : function(data) {
			//	alert(data);
				window.location.href=window.location.href ;
				window.parent.location.reload(); //刷新父页面
				var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
				parent.layer.close(index); 
				
			}
		});	
	}
}

function getModule() {
	var selectIndex = document.getElementById("project").selectedIndex;//获得是第几个被选中了
	var projectid = document.getElementById("project").options[selectIndex].value;
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


		
		
		
		
		
		
		</script>










</body>

</html>
