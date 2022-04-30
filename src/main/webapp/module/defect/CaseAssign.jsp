<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">

	<%@ include file="/module/common/aheader.jsp"%>
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="row row-lg">
					<div class="col-sm-12" style="min-height: 850px;">
					<Br>
					   当前项目：<auto:ProjectName></auto:ProjectName> 
					   <br><br>
										 <div class="col-sm-12" >
										   <div class="form-group" id="Condition">
											</div>
										 </div>
					
					
					
						<!-- Example Events -->
						<div class="example-wrap">
							<div class="example">
								<div class="btn-group hidden-xs" id="exampleTableEventsToolbar"
									role="group">
										
									<input class="form-control" type="hidden"
										value="${operationcode}" id="operationcode">
								</div>
								<table id="exampleTableEvents" data-mobile-responsive="true">
								</table>
							</div>
						</div>
						<!-- End Example Events -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Panel Other -->
	</div>

	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../layer/layer.js"></script>
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="js/bootstrap-table-casedemo.js"></script>
	<script>
$.ajax({
	type : "GET",
	url : "/module/defect/jsGetCaseSearchCondition.do",
	dataType : "text",
	success : function(result) {
		var defaulttext = document.getElementById("Condition");
		defaulttext.innerHTML =result + result+ result + result  + result  + result ;
	}
});

</script>
	
	
</body>

</html>
