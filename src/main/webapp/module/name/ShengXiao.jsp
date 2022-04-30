<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>十二生肖 | 十二生肖对照表  | 十二生肖计算器</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/module/name/styles/layout.css" type="text/css" />
<script type="text/javascript" src="/module/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.slidepanel.setup.js"></script>
</head>
<body>
<%@ include file="/module/name/common/header.jsp"%> 
<!-- ####################################################################################################### -->
<!--<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="#">Home</a></li>
      <li>&#187;</li>
      <li><a href="#">Grand Parent</a></li>
      <li>&#187;</li>
      <li><a href="#">Parent</a></li>
      <li>&#187;</li>
      <li class="current"><a href="#">Child</a></li>
    </ul>
  </div>
</div>-->
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container"  style="min-height:500px">
   
  <!--   <h1>Headline 1 Colour and Size</h1>
    <h2>Headline 2 Colour and Size</h2>
    <h3>Headline 3 Colour and Size</h3>
    <h4>Headline 4 Colour and Size</h4>
    <h5>Headline 5 Colour and Size</h5>
    <h6>Headline 6 Colour and Size</h6>
    <p>This is a W3C compliant free website template from <a href="http://www.cssmoban.com/" title="æ¨¡æ¿ä¹å®¶">ç½ç«æ¨¡æ¿</a>. This template is distributed using a <a href="#">Website Template Licence</a>.</p>
    <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit <a href="#">Free Website Templates</a>.</p> -->
  <p>
    
   
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





</p> 
   
  </div>
</div>
<%@ include file="/module/name/common/footer.jsp"%>



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
