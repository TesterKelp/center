<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
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

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>操作管理</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content">


				<div class="form-horizontal col-sm-10">
					<div class="form-group">
						<label class="col-sm-1 control-label">项目名称:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" id="projectname">
						</div>
						<label class="col-sm-1 control-label">项目描述:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" id="projectdesc">
						</div>



						<div class="col-sm-1">
							<div class="btn btn-primary" id="test1" onclick="addProject()">创建项目</div>
						</div>
					</div>
				</div>

				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">
								<table id="t1" data-toggle="table"
									data-query-params="queryParams" data-mobile-responsive="true"
									data-height="500" data-pagination="true"
									data-icon-size="outline">

								</table>



							</div>
						</div>
						<!-- End Example Pagination -->
					</div>


				</div>
			</div>
		</div>
		<!-- End Panel Other -->


	</div>

















	<div id="ShowModule" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">

				<div class="form-group">
					<label class="col-sm-2 control-label">模块名称：</label>
					<div class="col-sm-5">
						<input type="text" id="modulename" class="form-control">
					</div>
					<div class="col-sm-2">
						<div onclick="AddModule()" class="btn btn-primary">添加</div>
					</div>
					<div class="col-sm-2">
						<input type="text" class="form-control" id="projectid">

					</div>
				</div>

				<table id="t2" data-toggle="table" data-query-params="queryParams"
					data-mobile-responsive="true" data-pagination="true"
					data-icon-size="outline">

				</table>



			</form>
		</div>

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


	<!-- Peity      -->
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->

</body>

</html>
