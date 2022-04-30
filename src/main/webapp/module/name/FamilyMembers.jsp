<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Educational | Full Width</title>
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
    
   
    <h5 align="center">	家族</h5>
    <br></br>
    <table style="border:0px "><tr style="border:0px "> 
    <td align="right" style="border:0px ">成员姓名：</td>
    <td width="130px" style="border:0px "><input type="text" style="width:120px;" /></td>
    <td align="right" width="70px" style="border:0px ">孟姓父母：</td>
    <td width="130px" style="border:0px ">
    
<select id="pname">
  <option value ="volvo">Volvo</option>
  <option value ="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
    
    
    </td> 
    <td align="right" width="70px" style="border:0px ">外姓父母：</td>
    <td width="130px" style="border:0px "><input type="text" style="width:120px;" /></td> 
    <td style="border:0px "><button type="button">添加</button></td>
     <td style="border:0px "><input type="hidden" id="familyid" name="familyid" style="width:120px;" value="${id}" /></td>
    </tr></table>
           <table width="99%" style="border:1px solid #F00" >
								<tr>
				<td style="border:1px solid #F00" align="center" >序号</td>
				<!-- <td style="border:1px solid #F00" align="center">介绍</td>  -->
				<td style="border:1px solid #F00" align="center">成员</td>
				<td style="border:1px solid #F00" align="center">长辈</td>
				<td style="border:1px solid #F00" align="center">贡献</td>
				<td style="border:1px solid #F00" align="center">操作</td>
				
				</tr>
				<c:forEach items="${familylst}" var="a" varStatus="status">
				 <c:if test="${status.count%2==1}">
							</tr >
							<tr class="dark">
						    </c:if>
					 <c:if test="${status.count%2==0}">
							</tr >
							<tr class="light">
						    </c:if>
				<td style="border:1px solid #F00" > ${status.count}</td>
			<!-- 	<td style="border:1px solid #F00" >${a.userid}</td>  -->
				<td style="border:1px solid #F00"  align="center"> ${a.uname} </td>
				<td style="border:1px solid #F00"  align="center">   <a href="alertpid.do?pid=${a.pid}&reid= ${a.reid}"> ${a.pname}</a></td>
				<td style="border:1px solid #F00"  align="center"> 仙桃，蜡烛，香烛</td>
				<td style="border:1px solid #F00"  align="center"> ${a.sort}  删除</td>
				</tr>
				
				    
				
				
				
				
				</c:forEach>
			</table>












</p> 
   
  </div>
</div>
<%@ include file="/module/name/common/footer.jsp"%> 

<script type="text/javascript">
var  id= document.getElementById("familyid").value;

$.ajax({
	type : "GET",
	url : "/name/getFamilyNameSelect.do",
	async : false,
	data: {id:id},
	dataType : "json",
	success : function(rs) {
	
		
	var da = eval("(" + rs.data + ")");
			var con = "";
			for (var i = 0; i < (da.length); i++) {
				con = con + "<option value ='"+da[i].userid+"'>" + da[i].name
						+ "</option>";
			}
			document.getElementById("pname").innerHTML = con;

		}
	});
</script>



</body>
</html>
