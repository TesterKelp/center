<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >

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
<link href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg" >
	<div class="wrapper wrapper-content animated fadeInRight"  style="height:100%;">

		<!-- Panel Other -->
		<div class="ibox float-e-margins"  style="height:100%;">
			<div class="ibox-title">
				<h5>频道管理</h5>
				<div class="ibox-tools">
					<h5><a  style="color:#F00" href="/module/backstage/ItemCreate.jsp">【创建频道】 </a></h5>

				</div>
			</div>
			<div class="ibox-content" style="height:100%;">


				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap" style="height:100%;">
							<div class="example" style="height:100%;">
								<table id="t1" class="table table-striped table-bordered table-condensed"
									data-toggle="table" data-query-params="queryParams"
									data-mobile-responsive="true" 
									data-pagination="true" data-icon-size="outline">

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
						<input type="hidden" class="form-control" id="projectid">
					</div>
				</div>
				<table id="t2" data-toggle="table" data-query-params="queryParams"
					data-mobile-responsive="true" data-pagination="true"
					data-icon-size="outline">
				</table>
			</form>
		</div>
	</div>



	<div id="ShowModuleServer" style="display: none">
		<div class="ibox-content">
		<form class="form-horizontal" method="get">
			   	<div class="form-group">
					<label class="col-sm-3 control-label">服务器名称：</label>
					<div class="col-sm-5">
						<input type="text" id="EnvironmentName" class="form-control">
					</div>
					<div class="col-sm-2">
						<div onclick="CreateServer()" class="btn btn-primary">添加</div>
					</div>
					<div class="col-sm-2">
						<input type="hidden" class="form-control" id="serverprojectid">
					</div>
				</div>
				<table id="t5" data-toggle="table" data-query-params="queryParams"
					data-mobile-responsive="true" data-pagination="true"
					data-icon-size="outline">
				</table>
			</form>
		</div>
		
		
		
	</div>




	<div id="ShowModuleAddress" style="display: none">
	  <div class="ibox-content">
	   <form class="form-horizontal" method="get">
	   	<div class="form-group">
					<label class="col-sm-2 control-label">环境名称：</label>
					<div class="col-sm-5">
						<input type="text" id="EnvironmentType" class="form-control">
					</div>
					<div class="col-sm-2">
						<div onclick="CreateEnvironmentType()" class="btn btn-primary">添加</div>
					</div>
					<div class="col-sm-2">
						<input type="hidden" class="form-control" id="addressprojectid">
					</div>
		</div>

			    <ul class="nav nav-tabs" id="entype"></ul>
                <table id="servertype" data-toggle="table" data-query-params="queryParams"
					data-mobile-responsive="true" data-pagination="true"
					data-icon-size="outline"></table>      
		
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
	<script src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>

	<script>
	/*
	 *   load  project  list
	 */
	loadproject();

	//加载项目数据
	function loadproject(){
	    			var $table = $('#t1');
	    			$table.bootstrapTable({
	    			url: "/backstage/ItemList.do", 
	    			dataType: "json",
	    			pageSize: 20,
	    			      columns: [
	    			                
	    			              {
	    			                title: '频道ID',
	    			                  field: 'item_id',
	    			                  align: 'center',
	    			                  valign: 'middle',
	    			                	  width: '7%'
	    			              },
	    			              {
	    			                  title: '频道名称',
	    			                    field: 'item_name',
	    			                    align: 'center',
	    			                    valign: 'middle',
	    			                     width: '10%',
	    			                    	 
	    			                },
	    			                {
	    			                    title: '频道描述',
	    			                      field: 'item_description',
	    			                      align: 'center',
	    			                      valign: 'middle',
	    			                      width: '15%'
	    			                  }, {
	      			                    title: '创建时间',
	  			                      field: 'item_time',
	  			                      align: 'center',
	  			                      valign: 'middle',
	  			                      width: '12%'
	  			                  }, {
	    			                    title: '创建者',
	    			                      field: 'realname',
	    			                      align: 'center',
	    			                      valign: 'middle',
	    			                      width: '7%'
	    			                  },{
		    			                    title: '频道目录',
		    			                      field: 'item_directorie',
		    			                      align: 'center',
		    			                      valign: 'middle',
		    			                      width: '7%'
		    			                  },

	    			              {
	    			                  title: '操作名称',
	    			                  align: 'center', 
	    			                  width: '17%' ,
	    			                  formatter:function(value,row,index){  
	    			                	  var a = '<a href="#" mce_href="#"   onclick="showModule(\''+row.projectid+'\')"> [频道管理] </a> '; 
	    			                	  var k = '<a target="_blank" href="/'+row.item_directorie+'/portal.do" > [频道预览]</a> ';
	    			                	  var f = '<a href="#" mce_href="#" onclick="delWiftProject(\''+row.projectid+'\')"> [删除频道]</a> ';
	    			                           return a+"--"+k+"--"+f;  
	    			                       } 
	    			              }
	    			                  
	    			                  
	    			          ]
	    			  });
	  
	} 			
	
	</script>
	
	
	
	

</body>

</html>