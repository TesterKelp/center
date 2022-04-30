<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>接口详细页面</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<script type="text/javascript" charset="utf-8"
	src="../../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="../../ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="../../ueditor/lang/zh-cn/zh-cn.js"></script>

<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">

<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

<link href="../../test/json/s.css" type="text/css" rel="stylesheet">
<script src="../../test/json/c.js" type="text/javascript"></script>
<script src="http://cdn.staticfile.org/Mock.js/1.0.0/mock-min.js"></script>










</head>

<body class="gray-bg">


	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="col-sm-12">




				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>接口详情</h5>

							</div>
							<div class="ibox-content">
								<div class="row">
									
									<div class="col-sm-12">
                               
					<table  class="table table-bordered">
					<tr>
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">接口名称：</td>  
					<td>${interfacename}</td>  
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">所属项目： </td>  
					<td>${projectname}</td>  
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">所属模块： </td>  
					<td>${modulename}</td>
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">创建者： </td>  
					<td>${username}</td>
					</tr>
					
					<tr>
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">服务器名称：</td>  
					<td>${environmentname}</td>  
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">资源地址： </td>  
					<td>${directories}</td>  
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">请求方式：</td>  
					<td>${requesttype} </td>
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">设计用例: </td>  
					<td><a href="/wift/Wift_CreateCaseLoadPage.do?interfaceid=${interfaceid}">设计</a></td>
					</tr>
					
					
					<tr>
					<td style="text-align: left; vertical-align: text-top; width: 100px;background-color: #F5F5F6;">接口说明：</td>
					<td colspan="7" >${interfacedesc}</td>
					</tr>
					
					
					</table>
					 
										

							    
							    
							    
							    
							    
							<div class="form-group">




					<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="120px">请求参数</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必须</th>
											<th width="130px">类型</th>
											<th>默认值</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>



												<c:forEach items="${requestList}" var="a" varStatus="status">
													<tr data-index="4">
														<td
															style="text-align: center; vertical-align: middle; width:120;">${a.parametersort}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 10%;">${a.parametername}</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parameterrequired=='1'}">必填</c:if>
															<c:if test="${a.parameterrequired=='3'}">非必填</c:if>
														</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parametertype=='1'}">字符</c:if> 
															<c:if test="${a.parametertype=='3'}">数字</c:if> 
															<c:if test="${a.parametertype=='5'}">数组</c:if>
														</td>
														<td
															style="text-align: left; vertical-align: middle; width: 30%;">${a.parameterdefault}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 30%;">${a.parameterdescription}</td>

													</tr>

												</c:forEach>






											</tbody>
								</table>






					<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="120px">响应参数</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必填</th>
											<th width="130px">类型</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${responseList}" var="a" varStatus="status">
													<tr data-index="4">
														<td
															style="text-align: center; vertical-align: middle; width:120;">${a.parametersort}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 10%;">${a.parametername}</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parameterrequired=='1'}">必填</c:if>
															<c:if test="${a.parameterrequired=='3'}">非必填</c:if>
														</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parametertype=='1'}">字符</c:if> 
															<c:if test="${a.parametertype=='3'}">数字</c:if>
															<c:if test="${a.parametertype=='5'}">数组</c:if>
														</td>
														<td
															style="text-align: left; vertical-align: middle; width: 60%;">${a.parameterdescription}</td>

													</tr>

												</c:forEach>
									</tbody>
								</table>



					<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="120px">Request Header</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必填</th>
											<th>默认值</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${requestHeaderList}" var="a" varStatus="status">
													<tr data-index="4">
														<td
															style="text-align: center; vertical-align: middle; width:120;">${a.parametersort}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 10%;">${a.parametername}</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parameterrequired=='1'}">必填</c:if>
															<c:if test="${a.parameterrequired=='3'}">非必填</c:if>
														</td>
														<td
															style="text-align: left; vertical-align: middle; width: 35%;">${a.parameterdefault}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 35%;">${a.parameterdescription}</td>

													</tr>

												</c:forEach>
									</tbody>
								</table>


					<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="120px">Response Header</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必填</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${responseHeaderList}" var="a" varStatus="status">
													<tr data-index="4">
														<td
															style="text-align: center; vertical-align: middle; width:120;">${a.parametersort}</td>
														<td
															style="text-align: left; vertical-align: middle; width: 10%;">${a.parametername}</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
															<c:if test="${a.parameterrequired=='1'}">必填</c:if> 
															<c:if test="${a.parameterrequired=='3'}">非必填</c:if>
														</td>
														
														<td
															style="text-align: left; vertical-align: middle; width: 70%;">${a.parameterdescription}</td>

													</tr>

												</c:forEach>
									</tbody>
								</table>













						<!--  -->

									<div id="ControlsRow">
									
									        <input type="Button" value="mock模拟json没有处理" onclick="demojson()" />
											<input type="Button" value="加载json" onclick="getjson()" />
											<input type="Button" value="格式化" onclick="Process()" /> <span
													id="TabSizeHolder"> 缩进量 <select id="TabSize"
													onchange="TabSizeChanged()">
														<option value="1">1</option>
														<option value="2" selected="true">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
												</select>
												</span> <label for="QuoteKeys"> <input type="checkbox"
													id="QuoteKeys" onclick="QuoteKeysClicked()" checked="true" />
													引号
												</label>&nbsp; <a href="javascript:void(0);"
													onclick="SelectAllClicked()">全选</a> &nbsp; <span
													id="CollapsibleViewHolder"> <label
													for="CollapsibleView"> <input type="checkbox"
														id="CollapsibleView" onclick="CollapsibleViewClicked()"
														checked="true" /> 显示控制
												</label>
												</span> <span id="CollapsibleViewDetail"> <a
													href="javascript:void(0);" onclick="ExpandAllClicked()">展开</a>
													<a href="javascript:void(0);"
													onclick="CollapseAllClicked()">叠起</a> <a
													href="javascript:void(0);" onclick="CollapseLevel(3)">2级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(4)">3级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(5)">4级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(6)">5级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(7)">6级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(8)">7级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(9)">8级</a>
													<a href="javascript:void(0);" onclick="Pr()">去转义</a>
												</span>
											</div>
                             
								<textarea id="RawJson"  style="height: 300px;width:100%"> ${jsonstr}  </textarea> 
							    <div id="Canvas" class="Canvas"></div>  















	<div class="form-horizontal col-sm-10">
					<div class="form-group">
						<div class="col-sm-1">
							  <!-- <div class="btn btn-primary" id="test1" onclick=" ">创建用例</div>  -->
						</div>
					</div>
				</div>













									</div>

								</div>
							</div>
						</div>
					</div>
				</div>






			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	<script type="text/javascript">
		function getjson() {
			$.ajax({
				type : "GET",
				url : "/wift/Wift_Json.do",
				async : false,
				dataType : "text",
				success : function(data) {
					alert(data);
			//		var 	d = data.replaceAll("\"","\\\"");
			//	var 	d = data.repalceAll("\"","&quot;");
			//		alert(d);
					document.getElementById("200").innerHTML = data ;
				}
			});	
		}
	</script>
	
		<script type="text/javascript">
		function firstloadjson(a) {
		//	var  InterfaceSelect  =	document.getElementById("200") ;
		//	var index=InterfaceSelect.selectedIndex ; 
		//	var name = InterfaceSelect.options[index].value;
		var index=a.selectedIndex ; 
		var name = a.options[index].value;
			var  datvalue= document.getElementById("dat").value ;
		document.getElementById("dat").value= a.options[index].text;
		
			alert("--name--"+name);
			$.ajax({
				type : "GET",
				url : "/wift/Wift_Json_load.do",
				data : {
					"Name" : name	
				},
				async : false,
				dataType : "text",
				success : function(data) {
					alert(data);
					document.getElementById("300").innerHTML = data ;
				}
			});	
		}
	</script>
	
	<script type="text/javascript">
		function loadjson(a) {
		//	var  InterfaceSelect  =	document.getElementById("200") ;
		//	var index=InterfaceSelect.selectedIndex ; 
		//	var name = InterfaceSelect.options[index].value;
		var index=a.selectedIndex ; 
		var name = a.options[index].value;
			var  datvalue= document.getElementById("dat").value ;
		document.getElementById("dat").value= datvalue +" -- "+ a.options[index].text;
		
			alert("--name--"+name);
			$.ajax({
				type : "GET",
				url : "/wift/Wift_Json_load.do",
				data : {
					"Name" : name	
				},
				async : false,
				dataType : "text",
				success : function(data) {
					alert(data);
					document.getElementById("300").innerHTML = data ;
				}
			});	
		}
	</script>
	
	<script type="text/javascript">
		function demojson() {
			let Random = Mock.Random;
			Random.date();
			let dataMock = Mock.mock(/\/api\/test/, 'get',{
			      'dataList|10': [{
			        'id|1000001-200000': 666666,
			        'name': '@cname',
			        'email': '@email',
			        'date': '@date',
			        'str': '@csentence'
			    }]
			});
			console.log(dataMock);	

		$.ajax({
			type : "GET",
			url : "/api/test",
			dataType : "json",
			success : function(data) {
				alert("hahah"+data.dataList[0].id);
			}
		});		
		// 请求的 /api/test  会被mock拦截返回数据  dataMock
		}
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/module/wift/js/facecreate.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
<script type="text/javascript" src="../../test/json/m.js"></script>















</body>

</html>
