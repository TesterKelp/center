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
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">
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


	<div class="wrapper wrapper-content  animated fadeInRight">
    	<div class="ibox-title">
				<h5>导航管理</h5>
			
			</div>
        <div class="row">
            <div class="col-sm-12">
             
                <div class="ibox">
                    <div class="ibox-content">
                        
                        <div class="clients-list">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> 应用导航</a>
                                </li>
                                <li class=""><a data-toggle="tab" href="#tab-2"><i class="fa fa-briefcase"></i> 分享导航</a>
                                </li>
                                
                                 <div class="ibox-tools">
                         <div class="btn btn-primary" id="test1">添加导航</div>  
                        </div> 
                            </ul>
                            
                          
                            
                            
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="full-height-scroll">
                                        <div class="table-responsive">
                                           <table data-toggle="table"
									data-query-params="queryParams" data-mobile-responsive="true"
									data-pagination="true" data-icon-size="outline">
								  <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>导航名称</th>
                                    <th>导航url</th>
                                    <th>排序 </th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                                                <tbody>
                   
                               <c:forEach items="${navigation}" var="nav">
								<c:if test="${nav.navigation_type==1}">
   										<tr>
                                                    
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">${nav.navigation_id}</td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                    <input type="text" class="form-control" value="${nav.navigation_name}"  onblur="updataNavigation(this,'navigation_name','${nav.navigation_id}')" >
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                     <input type="text" class="form-control" value="${nav.navigation_url}"  onblur="updataNavigation(this,'navigation_url','${nav.navigation_id}')" >
                                                  
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                     <input type="text" class="form-control" value="${nav.navigation_sort}"  onblur="updataNavigation(this,'navigation_sort','${nav.navigation_id}')" >
                             
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                    <a href="#" mce_href="#" onclick="delNavigation('${nav.navigation_id}','tab-1',this)">删除</a> 
                                                    <c:if test="${nav.navigation_show==0}">
                                                    <a href="#" mce_href="#" onclick="setNavigationShow('${nav.navigation_id}',1)">设置显示</a> 
                                                    </c:if>  
                                                     <c:if test="${nav.navigation_show==1}">
                                                    <a href="#" mce_href="#" onclick="setNavigationShow('${nav.navigation_id}',0)">设置隐藏</a> 
                                                    </c:if>
                                                    </td>  
                                           </tr>
								</c:if>                 
                              </c:forEach>                  
                                                
                               
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-2" class="tab-pane">
                                    <div class="full-height-scroll">
                                        <div class="table-responsive">
                                                                                <table data-toggle="table"
									data-query-params="queryParams" data-mobile-responsive="true"
									data-pagination="true" data-icon-size="outline">
								  <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>菜单名称</th>
                                    <th>菜单url</th>
                                    <th>排序 </th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                                                <tbody>
                                                
                                                
                                                
                                                
                               <c:forEach items="${navigation}" var="nav">
								<c:if test="${nav.navigation_type==2}">
   										<tr>
                                                    
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">${nav.navigation_id}</td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                    <input type="text" class="form-control" value="${nav.navigation_name}"  onblur="updataNavigation(this,'navigation_name','${nav.navigation_id}')" >
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                     <input type="text" class="form-control" value="${nav.navigation_url}"  onblur="updataNavigation(this,'navigation_url','${nav.navigation_id}')" >
                                                  
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                     <input type="text" class="form-control" value="${nav.navigation_sort}"  onblur="updataNavigation(this,'navigation_sort','${nav.navigation_id}')" >
                             
                                                    </td>
                                                    <td style="text-align: center; vertical-align: middle; width: 2%; ">
                                                      <a href="#" mce_href="#" onclick="delNavigation('${nav.navigation_id}','tab-2',this)">删除</a> 
                                                    <c:if test="${nav.navigation_show==0}">
                                                    <a href="#" mce_href="#" onclick="setMenuShow(\''+row.menuid + '\',1)">设置显示</a> 
                                                    </c:if>  
                                                     <c:if test="${nav.navigation_show==1}">
                                                    <a href="#" mce_href="#" onclick="setMenuShow(\''+row.menuid + '\',0)">设置隐藏</a> 
                                                    </c:if>
                                                    </td>  
                                           </tr>
								</c:if>                 
                              </c:forEach>                  
                                                
                               
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
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
	<script src="js/NavigationManage.js" charset="utf-8"></script>
	<script src="../../test/js/plugins/iCheck/icheck.min.js"></script>
	<script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });

    <!-- Peity      -->
    <script src="../../test/js/demo/bootstrap-table-demo.js"></script>
</body>

</html>
