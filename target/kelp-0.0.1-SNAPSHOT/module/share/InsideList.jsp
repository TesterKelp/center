<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>测试平台</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link
	href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
</head>
<body class="gray-bg" onload="getCate2('${cateid}')">
	<div id="defect">
		<div class="defect_top">
			<auto:DefectMenu></auto:DefectMenu>
			<auto:LoginInfo></auto:LoginInfo>
		</div>
	</div>
	<br>
	<br>
	<div class="wrapper wrapper-content"  >
	<div class="row" >
			<div class="ibox-content"    style="min-height: 800px;" >



				<div class="mail-box-header" >
					<form method="post" action="ArticleSearch.do"
						class="pull-right mail-search">
						<div class="input-group">
							<input type="text" class="form-control input-sm" name="keyword"
								id="keyword" placeholder="搜索标题，正文等">
							<div class="input-group-btn">
								<button type="submit" class="btn btn-sm btn-primary">
									搜索</button>
							</div>
						</div>
					</form>
					<Br> <Br>
				</div>
<!-- 	<div class="mail-box"     >
				</div> -->
			
				
					<table id="t1" data-toggle="table" data-query-params="queryParams"
						data-mobile-responsive="true" data-width="80%"
						data-pagination="true">
					</table>
					<input type="hidden" class="form-control" id="cateid"
						value="${cateid}">

				
			</div>
		</div>
	</div>

	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>

	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script src="js/insidearticle.js"></script>
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

	<!-- iCheck -->
	<script src="../../test/js/plugins/iCheck/icheck.min.js"></script>
	<script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
</body>
</html>
