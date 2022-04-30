<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
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

<body class="gray-bg" onload="myShare()">
	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>用例管理</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content">
				<!-- 
<div class="col-sm-1">

<shiro:hasPermission name="user:create">  
            <div class="btn btn-primary" ><a href="CaseCreate.html">创建用例</a> </div>
   </shiro:hasPermission>         
            
            
     </div>
                    -->
				<div class="col-sm-2">
					<select class="form-control" id="projectSelect"
						onchange='getmodule()'>
						<option value="0">全部</option>


					</select>
				</div>

				<div class="col-sm-2">
					<select class="form-control" id="moduleSelect"
						onchange='getInterface()'>
						<option value="0">全部</option>
					</select>
				</div>


				<div class="col-sm-2">
					<select class="form-control" id="InterfaceSelect">
						<option value="0">全部</option>
					</select>
				</div>

				<div class="col-sm-1">
					<div class="btn btn-primary" onclick="search()">
						<a href="#">查询</a>
					</div>


				</div>



				<div class="col-sm-1">
					<div class="btn btn-primary" onclick="search()">
						<a href="/mift/Mift_CaseCreate.do">创建用例</a>
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





	<div id="ShowCreateOperation" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="post">

				<div class="form-group">
					<label class="col-sm-4 control-label">操作名称：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="OperationName">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-4 control-label">英文名称：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="EnglishName">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">操作类型：</label>
					<div class="col-sm-5">

						<select class="form-control" id="OperationType">
							<option value="1">文本框</option>
							<option value="2">下拉列表</option>
							<option value="3">时间类型</option>

						</select>
					</div>
				</div>
		</div>
		<div class="form-group">


			<div class="col-sm-4 col-sm-offset-2">
				<button type="button" class="btn btn-primary"
					onclick="saveOperation()">保存</button>
			</div>

		</div>
		</form>
	</div>

	</div>












	<div id="ShowSetTextDefault" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">

				<div class="form-group">
					<label class="col-sm-4 control-label">列表文本：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control">
					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-4 control-label">列表值：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control">
					</div>
				</div>

				<div class="form-group">


					<div class="col-sm-4 col-sm-offset-2">
						<button type="submit" class="btn btn-primary">添加</button>
					</div>

				</div>
			</form>
		</div>

	</div>



	<div id="ShowSetTimeDefault" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<div class="form-group">
					<label class="col-sm-4 control-label">设置文本值：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control">
					</div>
				</div>
			</form>
		</div>

	</div>


	<div id="ShowSetSelectDefault" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">

				<div class="form-group">
					<div class="col-sm-4 col-sm-offset-2">
						<div class="radio i-checks">
							<label class="">
								<div class="iradio_square-green checked"
									style="position: relative;">
									<input type="radio" name="a" value="option1"
										style="position: absolute; opacity: 0;">
									<ins class="iCheck-helper"
										style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
								</div> <i></i> 选项1
							</label>
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-2">
						<div class="radio i-checks">
							<label class="">
								<div class="iradio_square-green checked"
									style="position: relative;">
									<input type="radio" name="a" value="option1"
										style="position: absolute; opacity: 0;">
									<ins class="iCheck-helper"
										style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
								</div> <i></i> 选项1
							</label>
						</div>
					</div>

					<div class="col-sm-4 col-sm-offset-2">
						<div class="radio i-checks">
							<label class="">
								<div class="iradio_square-green checked"
									style="position: relative;">
									<input type="radio" name="a" value="option1"
										style="position: absolute; opacity: 0;">
									<ins class="iCheck-helper"
										style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
								</div> <i></i> 选项1
							</label>
						</div>
					</div>
				</div>


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
	<script src="/module/mift/js/ifCase.js"></script>


	<!-- Peity      -->
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->

</body>

</html>
