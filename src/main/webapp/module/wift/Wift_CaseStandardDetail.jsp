<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 测试平台 - 空白页</title>
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




<title></title>

    <style type="text/css">
/**
**https://blog.csdn.net/hello_mr_anan/article/details/70257627?locationNum=3&fps=1
  ***/
        table

        {

            border-collapse: collapse;

            margin: 0 auto;

            text-align: center;

        }

        table td, table th

        {

            border: 1px solid #cad9ea;

            color: #666;

            height: 30px;
            text-align: left;
            
        }

        table thead th

        {

            background-color: #CCE8EB;

            width: 100px;
           text-align: center;

        }

        table tr:nth-child(odd)

        {

            background: #fff;

        }
        table tr:nth-child(even)

        {
            background: #F5FAFA;
        }

    </style>









</head>

<body class="gray-bg">


	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="col-sm-12">




				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>用例详情</h5>

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
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">完善用例: </td>  
					<td><a href="/wift/Wift_CreateCaseLoadPage.do?interfaceid=${interfaceid}"></a></td>
					</tr>
					
					
					<tr>
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">用例名称：</td>  
					<td>${interface_case_name}</td>  
					<td style="text-align: left; vertical-align: middle; width: 100px;background-color: #F5F5F6;">用例描述： </td>  
					<td colspan="5">${interface_case_desc}</td> 
					</tr>
					
					
					<!--  
					<tr>
					<td style="text-align: left; vertical-align: text-top; width: 100px;background-color: #F5F5F6;">接口说明：</td>
					<td colspan="7" >${interfacedesc}</td>
					</tr>
					-->
					
					</table>



										<table height=40 cellPadding=1 width=100% border=1  align="left" class="table table-bordered">
										
												<tr>
													<th style="width:150px;background-color:#F5F5F6" >Request Parame</th>
													<th style="width:240px;background-color:#F5F5F6">参数名称</th>
													<th style="background-color:#F5F5F6">参数值</th>
												</tr>
										
											<c:forEach items="${caseRequestList}" var="a">
												<tr>
												   <td>${ a.index + 1}</td>
													<td>${a.dataname}</td>
													<td>${a.datavalue}</td>
												</tr>
											</c:forEach>
										</table>
										<hr>
										
										<table  height=40 cellPadding=1 width=100% border=1 class="table table-bordered">
									
													<th style="width:150px;background-color:#F5F5F6">Request header</th>
													<th style="width:240px;background-color:#F5F5F6">参数名称</th>
													<th style="background-color:#F5F5F6">参数值</th>
											<c:forEach items="${caseRequestHeaderList}" var="a">
												<tr>
												    <td>${ a.index + 1}</td>
													<td>${a.dataname}</td>
													<td>${a.datavalue}</td>
												</tr>
											</c:forEach>
										</table>


  											断言信息 ： <Br>

										<table height=40 cellPadding=1 width=900px class="table table-bordered" border=1>
											<tr>
													<th style="width:150px;background-color:#F5F5F6">Response AsserNo</th>
													<th style="width:240px;background-color:#F5F5F6">断言描述</th>
													<th style="background-color:#F5F5F6">断言内容</th>
													<th style="width:100px;background-color:#F5F5F6">断言方式</th>
													<th style="min-width:150px;background-color:#F5F5F6">断言期望</th>
												</tr>
											<c:forEach items="${caseAssertionList}" var="a">
												<tr>
												    <td>${ a.index + 1}</td>
													<td>${a.Assertion_Desc}</td>
													<td>${a.Assertion_content}</td>
													<td>
													<c:if test="${a.Assertion_type=='0'}">等于</c:if> 
													<c:if test="${a.Assertion_type=='1'}">包含</c:if> 
													<c:if test="${a.Assertion_type=='3'}">不包含</c:if> 
													</td>
													<td>${a.Expected_Result}</td>
												</tr>
											</c:forEach>
										</table>
										
										<table height=40 cellPadding=1 width=900px class="table table-bordered" border=1>
											<tr>
													<th style="width:150px;background-color:#F5F5F6">Response AsserNo</th>
													<th style="width:240px;background-color:#F5F5F6">断言描述</th>
													<th style="background-color:#F5F5F6">断言内容</th>
													<th style="width:100px;background-color:#F5F5F6">断言方式</th>
													<th style="min-width:150px;background-color:#F5F5F6">断言期望</th>
												</tr>
											<c:forEach items="${caseHeaderAssertionList}" var="a">
												<tr>
												    <td>${ a.index + 1}</td>
													<td>${a.Assertion_Desc}</td>
													<td>${a.Assertion_content}</td>
													<td>
													<c:if test="${a.Assertion_type=='0'}">等于</c:if> 
													<c:if test="${a.Assertion_type=='1'}">包含</c:if> 
													<c:if test="${a.Assertion_type=='3'}">不包含</c:if> 
													</td>
													<td>${a.Expected_Result}</td>
												</tr>
											</c:forEach>
										</table>
										
										
										
										
										
										
										
										
										
										
										
										<Br><br><br>
										


									</div>

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
	<script src="/module/wift/js/facecreate.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
















</body>

</html>
