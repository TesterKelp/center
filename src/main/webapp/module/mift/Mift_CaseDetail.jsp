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
								<h5>用例详情</h5>

							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-10">

										所属项目：${projectname} <Br> 所属模块：${modulename} <Br>
										接口名称：${interfacename} <Br>
										<!-- 
创建时间：${interfacename}
<Br>
创建者：${realname} 
<Br> -->
										用例名称：${interface_case_name} <Br>
										<hr>
										用例名称： ${interface_case_name} <Br>
										用例描述：${interface_case_desc} <Br> 请求地址：
										${interface_case_desc} <Br> 请求方式： ${interface_type} <Br>
										header信息： ${interface_header} <Br> 请求数据： <Br>

										<table borderColor=#000000 height=40 cellPadding=1 width=250
											border=3>

											<c:forEach items="${bodyList}" var="a">


												<tr>
													<td>${a.dataname}</td>
													<td>${a.datavalue}</td>
												</tr>



											</c:forEach>


										</table>


										期望结果： <Br> <Br>


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
	<script src="js/facecreate.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
















</body>

</html>
