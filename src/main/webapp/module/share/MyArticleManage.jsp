<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="/displaytags" prefix="auto"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">

<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/test/css/defect.css" rel="stylesheet">
<link href="/test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">


</head>
<body class="gray-bg" >
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content" style="min-height:950px;" >
		<div class="row">
	
	<div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                          <!--    <a class="btn btn-block btn-primary compose-mail" href="#">个人中心</a>-->
                            <div class="space-25"></div>
                            <h5>个人中心</h5>
                            <ul class="folder-list m-b-md" style="padding: 0" id="leftmenu"></ul>
           
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
		
		
		
		<div class="col-sm-10">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>我的分享</h5>
			</div>
			<div class="ibox-content">
		<div class="col-sm-1"></div>
				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">
								<table id="t1" data-toggle="table"
									data-query-params="queryParams" data-mobile-responsive="true"
									data-pagination="true"
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
	</div>




 <%@ include file="/module/common/footer.jsp"%> 








	<!-- 全局js -->
	<script src="/test/js/jquery.min.js?v=2.1.4"></script>
	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/layer/layer.js"></script>
	<!-- 自定义js -->
	<script src="/test/js/content.js?v=1.0.0"></script>
	<!-- Bootstrap table -->
	<script
		src="/test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="/test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="/test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="js/myarticle.js"></script>
	<!-- Peity      -->
	<script src="/test/js/demo/bootstrap-table-demo.js"></script>

<script type="text/javascript">
$.ajax({
	type : "GET",
	url : "/module/admin/getUserName.do",
	dataType : "text",
	success : function(data) {
		var  aa=	document.getElementById("defect").innerHTML;
		var  bb= document.getElementById("defect");
		bb.innerHTML=aa+data ;
	}
});	
</script>
<script type="text/javascript" src="/module/common/leftmenu.js"></script>
</body>

</html>
