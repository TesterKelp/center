<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
	<%@ include file="/module/common/aheader.jsp"%>
	<!-- 
	<div id="defect">
		<div class="defect_top">
			<auto:DefectMenu></auto:DefectMenu>
			<auto:LoginInfo></auto:LoginInfo> 
			<ul class="nav navbar-nav navbar-right">
			 <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown">项目 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="javascript:;"  onclick="setProject('2')" >广告前台</a>  </li>
                                    <li><a href="javascript:;"  onclick="setProject('3')" >供应商系统</a> </li>
                                </ul>
                            </li>
			</ul>  
		</div>

		<div class="dropdown nav navbar-nav  navbar-right tou"> 
	 <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown">项目 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="javascript:;"  onclick="setProject('2')" >广告前台</a>  </li>
                                    <li><a href="javascript:;"  onclick="setProject('3')" >供应商系统</a> </li>
                                </ul>
		 </div>
		

		
	</div>
	<br>
	<br>
	 -->
	
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-content" style="min-height: 800px; 800px; margin: 0 200px 0 200px">
				<div class="row row-lg">
					<div class="col-sm-12"  style="min-height: 850px;">
						<!-- Example Events -->
						<div class="example-wrap">
							<div class="example">
								<div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
								<BR>
								    当前项目：<auto:ProjectName></auto:ProjectName> 
								  <Br><BR>
								
								</div>

<div class="form-group">

								<div class="col-sm-3">
									<div class="widget red-bg p-lg text-center">
										<div class="m-b-md">
											<i class="fa fa-bell fa-4x"></i>
											<h1 class="m-xs">47</h1>
											<h3 class="font-bold no-margins">缺陷总数</h3>
											<small>我们检测到的错误。</small>
										</div>
									</div>
								</div>

								<div class="col-sm-3">
									<div class="widget red-bg p-lg text-center">
										<div class="m-b-md">
											<i class="fa fa-bell fa-4x"></i>
											<h1 class="m-xs">47</h1>
											<h3 class="font-bold no-margins">千行代码bug</h3>
											<small>我们检测到的错误。</small>
										</div>
									</div>
								</div>
 
 								<div class="col-sm-3">
									<div class="widget red-bg p-lg text-center">
										<div class="m-b-md">
											<i class="fa fa-bell fa-4x"></i>
											<h1 class="m-xs">47</h1>
											<h3 class="font-bold no-margins">线上问题数</h3>
											<small>我们检测到的错误。</small>
										</div>
									</div>
								</div>
								
									<div class="col-sm-3">
									<div class="widget red-bg p-lg text-center">
										<div class="m-b-md">
											<i class="fa fa-bell fa-4x"></i>
											<h1 class="m-xs">47</h1>
											<h3 class="font-bold no-margins">遗留问题</h3>
											<small>我们检测到的错误。</small>
										</div>
									</div>
								</div>
								

	</div>





<div class="row">
            <div class="col-sm-6">
                <div class="ibox-content">
                    <h2>线上问题汇总</h2>
                    <ul class="todo-list m-t">
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" />
                            <span class="m-l-xs">开会</span>
                            <small class="label label-primary"><i class="fa fa-clock-o"></i> 1小时</small>
                        </li>
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" checked/>
                            <span class="m-l-xs">项目开发</span>
                            <small class="label label-info"><i class="fa fa-clock-o"></i> 3小时</small>
                        </li>
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" />
                            <span class="m-l-xs">修改bug</span>
                            <small class="label label-warning"><i class="fa fa-clock-o"></i> 2小时</small>
                        </li>
                    </ul>
                </div>
            </div>
     
                 <div class="col-sm-6">
                <div class="ibox-content">
                    <h2>测试问题汇总</h2>
                    <ul class="todo-list m-t">
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" />
                            <span class="m-l-xs">开会</span>
                            <small class="label label-primary"><i class="fa fa-clock-o"></i> 1小时</small>
                        </li>
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" checked/>
                            <span class="m-l-xs">项目开发</span>
                            <small class="label label-info"><i class="fa fa-clock-o"></i> 3小时</small>
                        </li>
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" />
                            <span class="m-l-xs">修改bug</span>
                            <small class="label label-warning"><i class="fa fa-clock-o"></i> 2小时</small>
                        </li>
                    </ul>
                </div>
            </div>
     
     
     
     
        </div>




<div class="row">
            <div class="col-sm-6">
                <div class="ibox-content">
                    <h2>版本故事</h2>
                    <ul class="todo-list m-t">
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" />
                            <span class="m-l-xs">开会</span>
                            <small class="label label-primary"><i class="fa fa-clock-o"></i> 1小时</small>
                        </li>
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" checked/>
                            <span class="m-l-xs">项目开发</span>
                            <small class="label label-info"><i class="fa fa-clock-o"></i> 3小时</small>
                        </li>
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" />
                            <span class="m-l-xs">修改bug</span>
                            <small class="label label-warning"><i class="fa fa-clock-o"></i> 2小时</small>
                        </li>
                    </ul>
                </div>
            </div>
     
                 <div class="col-sm-6">
                <div class="ibox-content">
                    <h2>遗留问题</h2>
                    <ul class="todo-list m-t">
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" />
                            <span class="m-l-xs">开会</span>
                            <small class="label label-primary"><i class="fa fa-clock-o"></i> 1小时</small>
                        </li>
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" checked/>
                            <span class="m-l-xs">项目开发</span>
                            <small class="label label-info"><i class="fa fa-clock-o"></i> 3小时</small>
                        </li>
                        <li>
                            <input type="checkbox" value="" name="" class="i-checks" />
                            <span class="m-l-xs">修改bug</span>
                            <small class="label label-warning"><i class="fa fa-clock-o"></i> 2小时</small>
                        </li>
                    </ul>
                </div>
            </div>
     
     
     
     
        </div>






							</div>
						</div>
						<!-- End Example Events -->
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
	<script src="js/CommonProject.js"></script> 
	<!-- Bootstrap table -->
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<!-- Peity -->
	<script src="js/bootstrap-table-demo.js"></script>

</body>

</html>
