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



<style type="text/css">
body,table{
font-size:12px;
}
table{
table-layout:fixed;
empty-cells:show;
border-collapse: collapse;
margin:0 auto;
}
td{
height:30px;
}
h1,h2,h3{
font-size:12px;
margin:0;
padding:0;
}
.table{
border:1px solid #cad9ea;
color:#666;
}
.table th {
background-repeat:repeat-x;
height:30px;
}
.table td,.table th{
border:1px solid #cad9ea;
padding:0 1em 0;
}
.table tr.alter{
background-color:#f5fafe;
}
</style> 







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





<br>

<center>  ${casename}</center>
<br>



<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3> 

<br><br><br>


<input type="button" name="button1" id="button1" value="返回" onclick="history.go(-1)">


<table width="100%" class="table">

<tr><td  align="center" colspan="2"   >  

<c:if test="${result == '通过'}">
    <font size="3" color="green">通过</font> 
</c:if>  

 <c:if test="${result == '失败'}">
    <font size="3" color="red">失败</font> 
</c:if> 
   
   
   
   
   
      </td><tr>
<tr>
<th >测试用例</th>
<th >实际执行结果</th>
</tr>

<tr>
<td>
<c:forEach items="${bodyList}" var="a" varStatus="status">
${a.stepsort}
${a.operationname}:  
<c:if test="${a.widgetname != '无'}">
   ${a.widgetname}
</c:if>                 
 ：  ${a.pdata}<br/>
</c:forEach>
</td>
<td>  ${actualrs} </td>
</tr>

</table> 



















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
			url : "/SaveEditWidget.do",
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
