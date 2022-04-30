<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H+ 测试平台 - Bootstrap Table</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>操作管理</h5>
				<div class="ibox-tools">

					<input type='hidden' class="form-control" id="operationid"> <input
						type='hidden' class="form-control" id="operationtype">
						<input type='text' class="form-control" value="${projectid }"  id="projectid">
				</div>
			</div>
			<div class="ibox-content">

				<div class="btn btn-primary" id="test1">创建操作</div>
				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">
								<table id="t2" data-toggle="table"
									data-query-params="queryParams" data-mobile-responsive="true" data-pagination="true" data-icon-size="outline">
									
									
																		<tr>
<th style="text-align: center; vertical-align: middle; width: 5%; " data-field="operationid" tabindex="0">
<div class="th-inner ">ID</div>
<div class="fht-cell" style="width: 100px;"></div>
</th>
		
		<th style="text-align: center; vertical-align: middle; width: 5%; " data-field="operationid" tabindex="0">
<div class="th-inner "></div>
<div class="fht-cell" style="width: 100px;">英文名</div>
</th>

<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">中文名</div>
<div class="fht-cell" style="width: 100px;"></div>
</th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">操作类型</div>
<div class="fht-cell" style="width: 177px;"></div>
</th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">是否显示</div>
<div class="fht-cell" style="width: 177px;"></div>
</th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">主题</div>
<div class="fht-cell" style="width: 177px;"></div>
</th>


<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">排序</div>
<div class="fht-cell" style="width: 177px;"></div>
</th>



<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">设置</div>
<div class="fht-cell" style="width: 177px;"></div>
</th>



<th style="text-align: center; vertical-align: middle; width: 10%; " data-field="operationid" tabindex="0">
<div class="th-inner ">操作</div>
<div class="fht-cell" style="width: 177px;"></div>
</th>

<tr>	
									
									
									
<c:forEach items="${olst}" var="a" varStatus="status">

								<tr data-index="4">
								<td style="text-align: center; vertical-align: middle; width: 5%; ">${a.operationid}</td>
<td style="text-align: center; vertical-align: middle; width: 5%; ">${a.englishname }</td>

<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.chinaname }</td>


<td style="text-align: center; vertical-align: middle; width: 10%; ">   <c:if test="${a.operationtype==1}">文本类型</c:if><c:if test="${a.operationtype==2}">下拉类型</c:if> <c:if test="${a.operationtype==3}">日期类型</c:if>     </td>

<td style="text-align: center; vertical-align: middle; width: 10%; ">   
<c:if test="${a.isshow==1}"><font color="blue">已显示 </font>---<a href="#" onclick="setShowOrHidden('${a.operationid}','1')"> 设置隐藏</a></c:if>
<c:if test="${a.isshow==0}">已隐藏 ---<a href="#" onclick="setShowOrHidden('${a.operationid}','0')"> 设置显示</a></c:if></td>

<td style="text-align: center; vertical-align: middle; width: 10%; ">   
<c:if test="${a.subjecttype==1}">缺陷</c:if>
<c:if test="${a.subjecttype==3}">任务</c:if></td>

<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.operationorder}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; "><a href="#"  onclick="setting('${a.operationid}','${a.operationtype}')"   > 设置</a></td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">编辑 删除</td>

</tr>
					
</c:forEach>			
									
									
									
									
									
									
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
				
				
				
						<div class="form-group">
					<label class="col-sm-4 control-label">主题类型：</label>
					<div class="col-sm-5">

						<select class="form-control" id="SubjectType">
							<option value="1">缺陷</option>
							<option value="3">任务</option>


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
					<label class="col-sm-4 control-label">默认文本：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="defaulttext">
					</div>
					<div class="col-sm-5"></div>
				</div>
				<div class="form-group">
					<label class="col-sm-9 control-label">该值将显示在文本框内，做为提示说明！</label>

				</div>

				<div class="form-group">


					<div class="col-sm-4 col-sm-offset-2">
						<button type="submit" class="btn btn-primary"
							onclick="saveOperationVale()">设置默认值</button>
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
		<br>
		<div class="form-group">
			<div class="col-sm-10">
				<div class="radio i-checks">
					<label> <input type="radio" checked="" value="option2"
						name="a"> <i></i> 启用
					</label>
				</div>
			</div>
		</div>
		<br>
		<div class="col-sm-6 b-r">
			<div class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-4 control-label">效果:</label>
					<div class="col-sm-6">
						<select class="form-control" id="OperationText">
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">列表项：</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="selectvalue">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-4 col-sm-offset-2">
						<button type="submit" class="btn btn-primary"
							onclick="saveOperationVale()">添加选项</button>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<form class="form-horizontal" method="get">

				<div class="form-group">
					<label class="col-sm-4 control-label">自定义SQL：</label>
					<div class="col-sm-8">
						<textarea aria-required="true" required="" class="form-control"
							name="comment" id="ccomment"></textarea>
					</div>
				</div>
			</form>
		</div>
		<div class="col-sm-12">
			<form class="form-horizontal" method="get">
				<div class="radio i-checks">
					<label> <input type="radio" value="option1" name="a">
						<i></i> 启用
					</label>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">自定义SQL：</label>
					<div class="col-sm-8">
						<textarea aria-required="true" required="" class="form-control"
							name="comment" id="ccomment"></textarea>
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
	
			<script src="js/OperationManage.js" charset="utf-8"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>


 <script src="../../test/js/demo/bootstrap-table-demo.js"></script>

</body>
</html>