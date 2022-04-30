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
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>测试任务</h5>
					</div>
					<div class="ibox-content">


						<div class="form-horizontal col-sm-10">
							<div class="form-group">
								<label class="col-sm-1 control-label">任务名称:</label>
								<div class="col-sm-2">
									<input class="form-control" type="text" id="projectname">
								</div>

								<div class="col-sm-1">
									<div class="btn btn-primary" id="test1" onclick="addProject()">创建任务</div>
								</div>
							</div>
						</div>








						<div class="row">
							<table class="table">
								<thead>
									<tr>
										<th>编号</th>
										<th>任务名称</th>
										<th>创建日期</th>
										<th>创建者</th>
										<th>测试用例</th>
										<th>配置环境</th>
										<th>报告</th>
									</tr>
								</thead>
								<tbody>


									<c:forEach items="${taskList}" var="a">

										<tr>
											<td>${a.taskid}</td>
											<td><a
												href="/module/interface/InterfaceTaskDetail.do?taskid=${a.taskid}&&taskname='${a.taskname}'">
													${a.taskname} </a></td>
											<td>${a.actiontime}</td>
											<td>${a.realname}</td>
											<td><a
												href="/module/interface/InterfaceTaskDetail.do?taskid=${a.taskid}&&taskname='${a.taskname}'">用例管理</a></td>
											<td><a href="/module/interface/ReportManage.html">配置</a></td>
											<td><a href="/module/interface/ReportManage.html">测试报告</a></td>
										</tr>


									</c:forEach>











								</tbody>
							</table>








						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>

	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->

</body>

</html>
