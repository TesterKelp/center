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
	${menu}




	<!--  

	<c:forEach items="${all }" var="a">
				<c:if test="${a.pid==null}">
				<dl class="permission-list">
					<dt>
						<label>
							<input type="checkbox" value="${a.id }" name="check" id="user-Character-0">
						${a.name } 1  id  =${a.permissionid }  </label>
					</dt>
					<dd>
						<c:forEach items="${all }" var="p">
						<c:if test="${a.permissionid == p.pid }">
						<dl class="cl permission-list2">
							
							<dt>
								<label class="">
									<input type="checkbox" value="${p.id }"  name="check" id="user-Character-0-0">
									${p.name }:${p.permissionid }</label>
									&nbsp;&nbsp;
									<c:forEach items="${all }" var="v">
										<c:if test="${p.permissionid == v.pid }">
											<label class="">
												<input type="checkbox" value="${v.id }"  name="check" id="user-Character-0-0">
												${v.name }3
											</label>
											&nbsp;&nbsp;
										</c:if>
									</c:forEach>
							</dt>
						</dl>
						</c:if>
						</c:forEach>
					</dd>
				</dl>
				</c:if>
				</c:forEach>

-->







	<c:forEach items="${all }" var="a">
		<c:if test="${a.pid==null}">
			<fieldset style='padding: 5px; clear: left;'>
				<legend>
					<input type='checkbox' class='checkbox' name='menuModule'
						value='sys,sys' id='sys_sys' onClick='goSelect(this.id)'
						title="系统设置 ">${a.name } 模块
				</legend>
				<c:forEach items="${all }" var="p">
					<c:if test="${a.permissionid == p.pid }">
						<div1> <input type='checkbox' class='checkbox'
							name='menuModule' value='sys,group' id='sys_group'
							onClick='goSelect(this.id)' title='部门设置'>${p.name }页</div1>
						<c:forEach items="${all }" var="v">
							<c:if test="${p.permissionid == v.pid }">
								<div1> <input type='checkbox' class='checkbox'
									name='menuModule' value='sys,user' id='sys_user'
									onClick='goSelect(this.id)' title='人事管理'>${v.name }</div1>
							</c:if>
						</c:forEach>
						<br>
					</c:if>
				</c:forEach>
			</fieldset>
		</c:if>
	</c:forEach>




























</body>
</html>