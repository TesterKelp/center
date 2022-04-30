<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<title>kelp测试平台 - 登录</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link href="../../test/css/bootstrap.min.css" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css" rel="stylesheet">
<link href="../../test/css/login.css" rel="stylesheet">
<!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
<script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
        
    function  SetRememberMe(){
    	document.getElementById("rememberMe").value ="true" ;
    }  
        
        
    </script>

</head>

<body class="signin" onLoad="document.f.j_username.focus();">
	<%@ include file="/module/common/header.jsp"%>
	
	<div class="error ${param.error == true ? '' : 'hide'}">
		登陆失败<br>
		${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}
	</div>
	<div class="signinpanel">
		<div class="row">
			<div class="col-sm-7">
				<div class="signin-info">
					<div class="logopanel m-b">
						<h1>[ Kelp测试平台 ]</h1>
					</div>
					<div class="m-b"></div>
					<h4>
						<strong></strong>
					</h4>
					<ul class="m-b">
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 轻量级测试平台，包含以下功能模块：</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 缺陷管理</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 任务管理</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 用例管理</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 执行管理</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 测试报告</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 记事本功能</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 博客系统</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 分享学习</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 邮件通知</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 自定义数据项</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 自定义导航栏</li>
					</ul>
					
		
					
					
				</div>
			</div>
			<div class="col-sm-5"    style="min-height: 800px;">
				<!--   <form method="post" action="../../login.do"> -->

				<form method="post" action="testindex.do">
			<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 测试账号： root / admin      </li>
					<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 测试账号： long / admin</li>
					<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 测试账号： test1 / test1</li>
					<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i>Kelp使用交流群：513299582</li>
					<h4 class="no-margins">
						登录： <span style="color: red"> ${msg} </span>
					</h4>
					<input type="text" class="form-control uname" placeholder="用户名"
						name='j_username'
						value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>' />
					<input type="password" class="form-control pword m-b"
						placeholder="密码" name="j_password" /> <input type="hidden"
						id="rememberMe" name="rememberMe" value="false" /> 下次自动登录：<input
						type="checkbox" value="false" onclick="SetRememberMe()"><br />
					<!--       <input name="rememberMe"   value="true" />  -->
					<!--  <a href="">忘记密码了？</a>-->
					<button class="btn btn-success btn-block">登录</button>
				</form>
			</div>
		</div>

	</div>
	<%@ include file="/module/common/footer.jsp"%>
	
	
	
	<script>
	
	
	
	
	</script>
	
	
	
	
</body>

</html>
