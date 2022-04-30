<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/test/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/defect.css" rel="stylesheet">
</head>
<body onload="loadCate()" class="gray-bg">
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content">
<div class="row">
<div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                          <!--    <a class="btn btn-block btn-primary compose-mail" href="#">个人中心</a>-->
                            <div class="space-25"></div>
                            <h5>个人中心</h5>
                            <ul class="folder-list m-b-md" style="padding: 0"  id="leftmenu"> </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
<div class="col-sm-10">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>分类管理</h5>
			</div>
			<div class="ibox-content" style="min-height:930px">
			<div class="row">
		<div class="col-sm-1"></div>

				<div class="col-sm-10">

					<div class="form-horizontal col-sm-12">
					<div class="form-group">
						<label class="col-sm-1 control-label">分类名称:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" id="blogcatename">
						</div>
						<div class="col-sm-1">
							<div class="btn btn-primary" id="test1" onclick="saveBlogCate()">创建分类</div>
						</div>
						<div class="col-sm-2">
							<input class="form-control" type="hidden" id="catedirectory">
						</div>
					</div>
				</div>
					
					
					
					
					
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">
								<table id="t1" data-toggle="table"
									data-query-params="queryParams" data-mobile-responsive="true"
									data-height="700" data-pagination="true"
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
	



	<div id="EditorBlogCate" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<div class="form-group">
					<label class="col-sm-4 control-label">分类名称：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="Ablogcatename" > 
						<input type="hidden" class="form-control"  id="Ablogcateid">
					</div>
					<button type="button" class="btn btn-primary"  onclick="alterBlogCate()">修改</button>
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
	<script src="js/blogcate.js"></script>
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
