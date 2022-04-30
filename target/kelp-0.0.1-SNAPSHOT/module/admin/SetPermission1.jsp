<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>kelp测试平台</title>
<style>
div1, .div2 {
	float: left;
	display: inline;
}

div1 {
	width: 100px;
	margin-left: 30px;
}

div2 {
	width: 500px;
	margin: 0 20px 0 20px;
}
</style>
</head>
<body>

	<c:forEach items="${all }" var="a">
		<c:if test="${a.pid==null}">
			<fieldset style='padding: 5px; clear: left;'>

				<legend>
					<c:if test="${a.checkstatus==1}">
						<input type='checkbox' class='checkbox' name='menuModule'
							value='sys,sys' onClick="show('${a.permissionid}',this)"
							id='sys_sys' checked='checked'>${a.name } 
				</c:if>
					<c:if test="${a.checkstatus==0}">
						<input type='checkbox' class='checkbox' name='menuModule'
							value='sys,sys' onClick="show('${a.permissionid}',this)"
							id='sys_sys'>${a.name } 
				</c:if>
				</legend>


				<c:forEach items="${all }" var="p">
					<c:if test="${a.permissionid == p.pid }">


						<div1> <c:if test="${p.checkstatus==1}">
							<input type='checkbox' class='checkbox' name='menuModule'
								value='sys,sys' id='sys_sys'
								onClick="show('${p.permissionid}',this)" checked='checked'>${p.name } 
				</c:if> <c:if test="${p.checkstatus==0}">
							<input type='checkbox' class='checkbox' name='menuModule'
								value='sys,sys' id='sys_sys'
								onClick="show('${p.permissionid}',this)">${p.name } 
				</c:if> </div1>



						<c:forEach items="${all }" var="v">
							<c:if test="${p.permissionid == v.pid }">
								<div1> <c:if test="${v.checkstatus==1}">
									<input type='checkbox' class='checkbox' name='menuModule'
										value='sys,sys' id='sys_sys'
										onClick="show('${v.permissionid}',this)" checked='checked'>${v.name } 
							</c:if> <c:if test="${v.checkstatus==0}">
									<input type='checkbox' class='checkbox' name='menuModule'
										value='sys,sys' id='sys_sys'
										onClick="show('${v.permissionid}',this)">${v.name } 
							</c:if> </div1>
							</c:if>
						</c:forEach>
						<br>
					</c:if>
				</c:forEach>
			</fieldset>
		</c:if>
	</c:forEach>



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


















	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>

</body>
</html>