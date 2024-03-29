﻿<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui/css/style.css" />

<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>EATP会唐网测试平台</title>
</head>
<body>
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="#">自动化测试平台</a> <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li>超级管理员</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A">${realname} <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="MyConfigure.do">个人信息</a></li>
							<li><a href="logout.do">退出</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<aside class="Hui-aside">
	<input runat="server" id="divScrollValue" type="hidden" value="" />
	<div class="menu_dropdown bk_2">
		<dl id="menu-article">
			<dt class="selected"><i class="Hui-iconfont">&#xe616;</i> 系统测试<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd style="display: block;">
				<ul>
					<li><a _href="S_ProjectManage.do" data-title="项目管理" href="javascript:void(0)">项目管理</a></li>
					<li><a _href="widgetall.do" data-title="组件管理" href="javascript:void(0)">组件管理</a></li>
					<li><a _href="S_CaseAdd.jsp" data-title="设计用例" href="javascript:void(0)">设计用例</a></li>
					
					<li><a _href="S_CaseAddNew.jsp" data-title="设计用例" href="javascript:void(0)">设计</a></li> <!-- -->
					
					<li><a _href="S_CaseManage.do" data-title="用例管理" href="javascript:void(0)">用例管理</a></li>
					<li><a _href="S_TaskManage.do" data-title="任务管理" href="javascript:void(0)">任务管理</a></li>
					<li><a _href="S_CaseTaskManage.do" data-title="用例任务" href="javascript:void(0)">用例任务</a></li>
					<li><a _href="S_ReportManage.do" data-title="执行记录" href="javascript:void(0)">执行记录</a></li>
					<li><a _href="MyConfigure.do" data-title="配置信息" href="javascript:void(0)">配置信息</a></li>
					<li><a _href="S_DataManage.do" data-title="数据管理" href="javascript:void(0)">数据管理</a></li>
					<li><a _href="/GetArticleByStTeach.do" data-title="平台说明" href="javascript:void(0)">平台说明</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-admin">
			<dt><i class="Hui-iconfont">&#xe62d;</i> 系统后台<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
				
					<li><a _href="S_OperationManage.do" data-title="操作管理" href="javascript:void(0)">操作管理</a></li>
				    <li><a _href="/systemtest/Web_ProjectManage.do" data-title="操作管理" href="javascript:void(0)">项目管理</a></li>
				    <li><a _href="/systemtest/widgetall.do" data-title="操作管理" href="javascript:void(0)">组件管理</a></li>
				    <li><a _href="/systemtest/Web_CaseManage.do" data-title="操作管理" href="javascript:void(0)">用例管理</a></li>
				    <li><a _href="/systemtest/Web_CaseAdd.do" data-title="设计22用例" href="javascript:void(0)">创建用例</a></li>
				    <li><a _href="/systemtest/Web_TaskManage.do" data-title="操作管理" href="javascript:void(0)">任务管理</a></li>
				    <li><a _href="/systemtest/Web_ReportManage.do" data-title="操作管理" href="javascript:void(0)">执行报告</a></li>
				    <li><a _href="/systemtest/Web_OperationManage.do" data-title="操作管理" href="javascript:void(0)">操作管理</a></li>
				    
				<!-- 
				    <li><a _href="member-list.html" data-title="会员列表" href="javascript:;">会员列表</a></li>
					<li><a _href="admin-role.html" data-title="角色管理" href="javascript:void(0)">分组管理</a></li>
					<li><a _href="admin-permission.html" data-title="权限管理" href="javascript:void(0)">权限管理</a></li>
					<li><a _href="S_system-base.html" data-title="操作管理" href="javascript:void(0)">邮件配置</a></li>
					<li><a _href="case.jsp" data-title="操作管理" href="javascript:void(0)">邮件配置</a></li>
					 -->
				</ul>
			</dd>
		</dl>
		



		

		
		
		
		
		
		
	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="我的桌面" data-href="MyConfigure.do">我的信息</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group">
		<a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a> 
		<a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
		</div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="MyConfigure.do"></iframe>
		</div>
	</div>
</section>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="static/h-ui/js/H-ui.admin.js"></script> 











<script type="text/javascript">
/*资讯-添加*/
function article_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*图片-添加*/
function picture_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*产品-添加*/
function product_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
</script> 

</body>
</html>