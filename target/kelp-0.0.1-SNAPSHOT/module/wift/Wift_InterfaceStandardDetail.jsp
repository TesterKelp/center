<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 测试平台 - 空白页</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<script type="text/javascript" charset="utf-8"
	src="../../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="../../ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="../../ueditor/lang/zh-cn/zh-cn.js"></script>

<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">

<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">


	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="col-sm-12">




				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>接口详情</h5>

							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-10">

										所属项目：${projectname} <Br> 所属模块：${modulename} <Br>

										接口创建者：${username} <Br> 接口名称：${interfacename} <Br>
										
										请求方式：${requesttype} <Br>
										服务器名称：${environmentname} 
										 <Br>资源地址：${directories} 
										<hr>  
										接口说明： <Br> <Br> ${interfacedesc}




					<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="150px">请求参数</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必须</th>
											<th width="130px">类型</th>
											<th>默认值</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>



												<c:forEach items="${requestList}" var="a" varStatus="status">
													<tr data-index="4">
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">${a.parametersort}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 10%;">${a.parametername}</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parameterrequired=='1'}">
																<a href="#">必填</a>
															</c:if> <c:if test="${a.parameterrequired=='3'}">
																<a href="#">非必填</a>
															</c:if>
														</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parametertype=='1'}">
																<a href="#">字符</a>
															</c:if> <c:if test="${a.parametertype=='3'}">
																<a href="#">数字</a>
															</c:if> <c:if test="${a.parametertype=='5'}">
																<a href="#">数组</a>
															</c:if>
														</td>
														<td
															style="text-align: left; vertical-align: middle; width: 30%;">${a.parameterdefault}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 30%;">${a.parameterdescription}</td>

													</tr>

												</c:forEach>






											</tbody>
								</table>






					<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="150px">响应参数</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必填</th>
											<th width="130px">类型</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${responseList}" var="a" varStatus="status">
													<tr data-index="4">
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">${a.parametersort}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 10%;">${a.parametername}</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parameterrequired=='1'}">
																<a href="#">必填</a>
															</c:if> <c:if test="${a.parameterrequired=='3'}">
																<a href="#">非必填</a>
															</c:if>
														</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parametertype=='1'}">
																<a href="#">字符</a>
															</c:if> <c:if test="${a.parametertype=='3'}">
																<a href="#">数字</a>
															</c:if> <c:if test="${a.parametertype=='5'}">
																<a href="#">数组</a>
															</c:if>
														</td>
														<td
															style="text-align: left; vertical-align: middle; width: 60%;">${a.parameterdescription}</td>

													</tr>

												</c:forEach>
									</tbody>
								</table>



					<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="150px">请求Header参数</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必填</th>
											<th>默认值</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${requestHeaderList}" var="a" varStatus="status">
													<tr data-index="4">
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">${a.parametersort}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 10%;">${a.parametername}</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parameterrequired=='1'}">
																<a href="#">必填</a>
															</c:if> <c:if test="${a.parameterrequired=='3'}">
																<a href="#">非必填</a>
															</c:if>
														</td>
														<td
															style="text-align: left; vertical-align: middle; width: 35%;">${a.parameterdefault}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 35%;">${a.parameterdescription}</td>

													</tr>

												</c:forEach>
									</tbody>
								</table>


					<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="150px">响应Header参数</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必填</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${responseHeaderList}" var="a" varStatus="status">
													<tr data-index="4">
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">${a.parametersort}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 10%;">${a.parametername}</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parameterrequired=='1'}">
																<a href="#">必填</a>
															</c:if> <c:if test="${a.parameterrequired=='3'}">
																<a href="#">非必填</a>
															</c:if>
														</td>
														
														<td
															style="text-align: left; vertical-align: middle; width: 70%;">${a.parameterdescription}</td>

													</tr>

												</c:forEach>
									</tbody>
								</table>












	<div class="form-horizontal col-sm-10">
					<div class="form-group">
						<div class="col-sm-1">
							  <!-- <div class="btn btn-primary" id="test1" onclick=" ">创建用例</div>  -->
						</div>
					</div>
				</div>













									</div>

								</div>
							</div>
						</div>
					</div>
				</div>






			</div>
		</div>
	</div>

	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/module/wift/js/facecreate.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
















</body>

</html>
