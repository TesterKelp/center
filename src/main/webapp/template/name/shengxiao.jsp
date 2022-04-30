<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>生肖计算器_十二生肖_十二生肖对照表__十二生肖计算器</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" href="/template/name/name/layout.css" type="text/css" />
<link rel="stylesheet" href="/template/name/name/tables.css" type="text/css" />
</head>

<body class="gray-bg">
	<%@ include file="/template/name/htmlheader.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content  animated fadeInRight article">
		<div class="row">
			
				<div class="ibox">
					<div class="ibox-content"   style="min-height: 800px;" >


						<br>
						<div class="pull-right">
							<a href='/blog/Blog.do?userid=${userid}'>${username} </a>
							<button class="btn btn-white btn-xs" type="button">分享于：${creattime}</button>
							<!--     <button class="btn btn-white btn-xs" type="button"> 帮助111个测试工程师 </button> -->
							<img src="/test/pic/weixin.jpg" width="100"  height="100">
						</div>
						<div class="text-center article-title">
							<h2> <b> ${title} </b></h2>
							
							
							
				
							
							
							
							 <h5 align="center">十二生肖  十二生肖对照表  十二生肖计算器</h5>
    <br></br>
    <table style="border:1px solid #F00"  ><tr style="border:0px "> 
    <td align="right" style="border:0px ;vertical-align: middle ">年份：</td>
    <td width="130px" style="border:0px  ;vertical-align: middle"><input type="text" id="year" style="width:120px;" /></td>
    <td width="130px" style="border:0px  ;vertical-align: middle"><button type="button"  onclick="getYear()"   style="width:100px;font-size: 10px;height:22px">生肖计算</button></td>
    <td width="600px" style="border:1px solid #F00 ;vertical-align: middle" id="rs">中国特有的十二生肖。 </td>
    </tr></table>
           <table width="99%" style="border:1px solid #F00" >
				<tr>
				<td style="border:1px solid #F00" align="center">子鼠</td>
				<td style="border:1px solid #F00" align="center">丑牛</td>
				<td style="border:1px solid #F00" align="center">寅虎</td>
				<td style="border:1px solid #F00" align="center">卯兔</td>
				<td style="border:1px solid #F00" align="center">辰龙</td>
				<td style="border:1px solid #F00" align="center">巳蛇</td>
				</tr>
					<tr>
				<td style="border:1px solid #F00" align="center" ><img src="/module/name/12/4361.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/4362.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/4363.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/4364.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/4365.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/4366.png" style="width:150px;height:150px"></td>
				</tr>
					<tr>
				<td style="border:1px solid #F00" align="center" >午马</td>
				<td style="border:1px solid #F00" align="center">未羊</td>
				<td style="border:1px solid #F00" align="center">申猴</td>
				<td style="border:1px solid #F00" align="center">酉鸡</td>
				<td style="border:1px solid #F00" align="center">戌狗</td>
				<td style="border:1px solid #F00" align="center">亥猪</td>
				</tr>
					<tr>
				<td style="border:1px solid #F00" align="center" ><img src="/module/name/12/4367.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/4368.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/4369.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/43610.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/43611.png" style="width:150px;height:150px"></td>
				<td style="border:1px solid #F00" align="center"><img src="/module/name/12/43612.png" style="width:150px;height:150px"></td>
				</tr>
				

			
			</table>


<table width="99%" style="border:1px solid #F00" >
<tr><td colspan="12" style="border:1px solid #F00" align="center"><strong>十二生肖对照表</strong></td></tr>
<tr>
				<td style="border:1px solid #F00" align="center">子鼠</td>
				<td style="border:1px solid #F00" align="center">丑牛</td>
				<td style="border:1px solid #F00" align="center">寅虎</td>
				<td style="border:1px solid #F00" align="center">卯兔</td>
				<td style="border:1px solid #F00" align="center">辰龙</td>
				<td style="border:1px solid #F00" align="center">巳蛇</td>
				<td style="border:1px solid #F00" align="center" >午马</td>
				<td style="border:1px solid #F00" align="center">未羊</td>
				<td style="border:1px solid #F00" align="center">申猴</td>
				<td style="border:1px solid #F00" align="center">酉鸡</td>
				<td style="border:1px solid #F00" align="center">戌狗</td>
				<td style="border:1px solid #F00" align="center">亥猪</td>
</tr>
	<tr>
				<c:forEach items="${lst}" var="a" varStatus="status">
				<td style="border:1px solid #F00" align="center">${a} </td>
					 <c:if test="${status.count%12==0}">
							</tr >
							<tr class="light">
						    </c:if>
				</c:forEach>
				</tr>

</table>

							
							
							
							
							
							
							
							
							
							
							
							
							
						</div>
					</div>
				</div>
			
		</div>

	</div>



	<%@ include file="/module/common/footer.jsp"%> 
	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/module/share/js/article.js"></script>
	<script src="/template/name/kjs/common.js"></script>




	<script type="text/javascript">

	function  getYear(){
		var year = document.getElementById("year").value;
		$.ajax({
			type : "GET",
			url : "/name/Year.do",
			async : false,
			data : {
				year : year
			},
			dataType : "text",
			success : function(ds) {
				document.getElementById("rs").innerHTML = ds;
			}
		});
	}
	</script>

</body>

</html>