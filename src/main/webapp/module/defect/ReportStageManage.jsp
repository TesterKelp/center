<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
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
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">


	<div id="defect">
		<div class="defect_top">
			<auto:DefectMenu></auto:DefectMenu>
			<auto:LoginInfo></auto:LoginInfo>
		</div>
	</div>
	<br>
	<br>





	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins" style="min-height: 800px;  margin: 0 200px 0 200px">
			<div class="ibox-title" >
				<h5>报告中心</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content" >


				<div class="row row-lg">
					<div class="col-sm-12" style="min-height: 800px;">
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
	<!-- Peity      -->
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>
	<script>
   var $table = $('#t1');
   $table.bootstrapTable({
   url: "StageReportList.do", 
   dataType: "json",
         columns: [
                   
                 {
                   title: '项目ID',
                     field: 'reportid',
                     align: 'center',
                     valign: 'middle',
                   	  width: '5%'
                 },
                 {
                     title: '报告名称',
                       field: 'reportname',
                       align: 'center',
                       valign: 'middle',
                        width: '20%',
                       	 
                   },
                  {
   	                    title: '创建时间',
                       field: 'ctime',
                       align: 'center',
                       valign: 'middle',
                       width: '10%'
                   }, {
                       title: '创建者',
                         field: 'realname',
                         align: 'center',
                         valign: 'middle',
                         width: '10%'
                     },
                 {
                     title: '操作名称',
                     align: 'center', 
                     width: '10%' ,
                     formatter:function(value,row,index){  
                   	  var c = '<a href="Report.do?reportid='+row.reportid+'" >查看</a> ';
                 
                              return c;  
                          } 
                 }    
             ]
     });
   
   </script>

</body>

</html>