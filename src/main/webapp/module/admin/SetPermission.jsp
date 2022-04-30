<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>kelp测试平台</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

<style>
div1, .div2 {
	float: left;
	display: inline;
}

div1 {
	width: 100px;
	margin-left: 30px;
	margin-top: 1px;
}

div2 {
	width: 500px;
	margin: 0 10px 0 px;
}

hr {
	margin-bottom: 0 px;
}
</style>


<!-- 全局js -->
<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../layer/layer.js"></script>
<!-- 自定义js -->
<script src="../../test/js/content.js?v=1.0.0"></script>
<script src="js/group.js"></script>




</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>权限管理</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"></a>
				</div>
			</div>
			<div class="ibox-content">
				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">


							<c:forEach items="${all }" var="a">
								<c:if test="${a.pid==0}">

									<Br>
									<c:if test="${a.checkstatus==1}">
										<lable> <input type='checkbox' name='menuModule'
											value='sys,sys' onClick="show('${a.permissionid}',this)"
											id='sys_sys' checked='checked'>
										<span> ${a.name } </span> </lable>

									</c:if>
									<c:if test="${a.checkstatus==0}">
										<lable> <input type='checkbox' name='menuModule'
											value='sys,sys' onClick="show('${a.permissionid}',this)"
											id='sys_sys'> <span> ${a.name } 1 </span> </lable>

									</c:if>
									<hr>



									<c:forEach items="${all }" var="p">

										<c:if test="${a.permissionid == p.pid }">
											<Br>
											<div1> <c:if test="${p.checkstatus==1}">
												<lable> <input type='checkbox' name='menuModule'
													value='sys,sys' id='sys_sys'
													onClick="show('${p.permissionid}',this)" checked='checked'>
												<span> ${p.name } </span> </lable>
											</c:if> <c:if test="${p.checkstatus==0}">
												<lable> <input type='checkbox' name='menuModule'
													value='sys,sys' id='sys_sys'
													onClick="show('${p.permissionid}',this)"> <span>
													${p.name } </span> </lable>
											</c:if> </div1>


											<c:forEach items="${all }" var="v">

												<c:if test="${p.permissionid == v.pid }">
													<div1> <c:if test="${v.checkstatus==1}">
														<input type='checkbox' name='menuModule' value='sys,sys'
															id='sys_sys' onClick="show('${v.permissionid}',this)"
															checked='checked'>${v.name } 
							</c:if> <c:if test="${v.checkstatus==0}">
														<input type='checkbox' name='menuModule' value='sys,sys'
															id='sys_sys' onClick="show('${v.permissionid}',this)">${v.name } 
							</c:if> </div1>
												</c:if>
											</c:forEach>
											<br>

										</c:if>
									</c:forEach>

								</c:if>
							</c:forEach>





						</div>
						<!-- End Example Pagination -->
					</div>


				</div>
			</div>
		</div>
		<!-- End Panel Other -->


	</div>










	<div id="groupUserManage" style="display: none">
		<input type="hidden" class="form-control" id="group_id">
	</div>












	<input type="text" value="${groupid}" class="form-control" id="groupid">
	<script type="text/javascript">
function  show(permissionid,a){
	var groupid =	document.getElementById("groupid").value  ;
	if(a.checked==true){
		var checkstatus =1;
		$.ajax({
			type : "POST",
			url : "CheckPermission.do",
			async : true,
			data : {groupid:groupid,permissionid:permissionid,checkstatus:checkstatus},
			dataType : "json",
			success : function(data) {

			}
		});
	}
	else{
		var checkstatus= 0;
		$.ajax({
			type : "POST",
			url : "CheckPermission.do",
			async : false,
			data : {groupid : groupid,permissionid:permissionid,checkstatus:checkstatus},
			dataType : "text",
			success : function(data) {

			}
		});
	}
	
	
}
</script>











</body>

</html>
