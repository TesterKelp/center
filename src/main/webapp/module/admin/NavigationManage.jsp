<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>kelp测试平台</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link rel="shortcut icon" href="favicon.ico">
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="/test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/test/css/plugins/iCheck/custom.css" rel="stylesheet">
</head>
<body class="gray-bg">

	<div id="ShowCreateOperation" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="post">
				<div class="form-group">
					<label class="col-sm-4 control-label">菜单名称：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="navigationName">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">菜单地址：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="navigationUrl">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">窗口方式：</label>
					<div class="col-sm-5">
						<select class="form-control" id="navigationTarget">
							<option value="_blank">新窗口打开</option>
							<option value="_self">原窗口打开</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">导航类型：</label>
					<div class="col-sm-5">
						<select class="form-control" id="navigationType">
							<option value="1">应用导航</option>
							<option value="2">分享导航</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">导航图标：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="navigationIcon">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">菜单排序：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="navigationSort">
					</div>
				</div>
		</div>
		<div class="form-group">
			<div class="col-sm-4 col-sm-offset-2">
				<button type="button" class="btn btn-primary" onclick="saveNavigation()">保存</button>
			</div>
		</div>
		</form>
	</div>
	</div>


	<div id="ShowNavigationType" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="post"> </form>
				<div class="form-group">
					<label class="col-sm-3 control-label">类型名称：</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="navigationTypeName">
					</div>
					<div class="col-sm-3">
						<button type="button" class="btn btn-primary" onclick="saveNavigationType()">保存</button>
					</div>
				</div>
      <br><br>
		
		
		<table id="t5" data-toggle="table" data-query-params="queryParams"
					data-mobile-responsive="true" data-pagination="true"
					data-icon-size="outline">
		</table>
		
	</div>
	</div>







	<div class="wrapper wrapper-content  animated fadeInRight">
    	<div class="ibox-title"><h5>导航管理</h5></div>
        <div class="row">
            <div class="col-sm-12">
             
                    <div class="ibox-content">
                            <ul class="nav nav-tabs">
								<c:forEach items="${nlst}" var="n">
									<c:if test="${n.navigation_type_id==id}">
										<li class="active"><a 
											href="#/module/admin/${n.navigation_type_id}/NavigationManage.do"><i
												class="fa fa-user"></i> ${n.navigation_type_name}</a></li>
									</c:if>
									<c:if test="${n.navigation_type_id!=id}">
										<li ><a 
											href="/module/admin/${n.navigation_type_id}/NavigationManage.do"><i
												class="fa fa-user"></i>${n.navigation_type_name} </a></li>
									</c:if>
								</c:forEach>

								<div class="ibox-tools">
                                 <div class="btn btn-primary" id="test1">添加导航</div>  
                                 <div class="btn btn-primary" id="test2">导航类型</div>  
                        </div> 
                            </ul>          
                    <table data-toggle="table" data-query-params="queryParams" data-mobile-responsive="true" data-pagination="true" data-icon-size="outline">
								  <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>导航名称</th>
                                    <th>导航url</th>
                                    <th>图标 </th>
                                    <th>排序 </th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                                                <tbody>
                   
                               <c:forEach items="${navigation}" var="nav">
   										<tr> <td style="text-align: center; vertical-align: middle; width: 2%; ">${nav.navigation_id}</td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                    <input type="text" class="form-control" value="${nav.navigation_name}"  onblur="updataNavigation(this,'navigation_name','${nav.navigation_id}')" >
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                     <input type="text" class="form-control" value="${nav.navigation_url}"  onblur="updataNavigation(this,'navigation_url','${nav.navigation_id}')" >
                                                  
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                     <input type="text" class="form-control" value="${nav.navigation_icon}"  onblur="updataNavigation(this,'navigation_icon','${nav.navigation_id}')" >
                             
                                                    </td>
                                                    
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                     <input type="text" class="form-control" value="${nav.navigation_sort}"  onblur="updataNavigation(this,'navigation_sort','${nav.navigation_id}')" >
                             
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                    <a href="#" mce_href="#" onclick="delNavigation('${nav.navigation_id}','tab-1',this)">删除11</a> 
                                                    <c:if test="${nav.navigation_show==0}">
                                                    <a href="#" mce_href="#" onclick="setNavigationShow('${nav.navigation_id}',1)">设置显示</a> 
                                                    </c:if>  
                                                     <c:if test="${nav.navigation_show==1}">
                                                    <a href="#" mce_href="#" onclick="setNavigationShow('${nav.navigation_id}',0)">设置隐藏</a> 
                                                    </c:if>
                                                    </td>  
                                           </tr>        
                              </c:forEach>                  
                                                
                               
                                                </tbody>
                                            </table>
                                            
                                        <div class="clear"></div>
                          

                      
                </div>
                    </div>
                </div>
            </div>



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
	<script src="/module/admin/js/NavigationManage.js" charset="utf-8"></script>
    
</body>

</html>
