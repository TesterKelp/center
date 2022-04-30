<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>家族宗祠_家族列表_家族辈分</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/lang/zh-cn/zh-cn.js"></script>
<link rel="shortcut icon" href="favicon.ico">
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


						<div class="text-center article-title">
						
						
							  <h5 align="center">	家族</h5>
    <br></br>
    <br></br>
           <table width="99%" >
								<tr>
				<td>家族</td>
				<td>介绍</td>
				<td>图片</td>
				<td>族长</td>
				<td>操作</td>
				</tr>
				<c:forEach items="${family}" var="a" varStatus="status">
				<tr>
				<td>${a.familyintroduce}</td>
				<td>${a.familytree}</td>
				<td>  <img  height="100px" width="200px"   src="${a.pic}" /></td>
				<td>${a.realname}</td>
				<td> 
				<a href="/name/FamilyMembers1.do?id=${a.familyid}"    >家族族员</a>  <br>
				<a href="/name/FamilyDetail1.do?id=${a.familyid}"    >我的家族</a>  <br>
				<!--  
				<a href="/name/FamilyDetail.do?id=${a.familyid}"    >邀请加入</a>  <br>
				<a href="/name/FamilyDetail.do?id=${a.familyid}"    >家族香火</a>  <br>
				<a href="/name/FamilyDetail.do?id=${a.familyid}"    >创建家族</a>  <br>
				
				家族喜讯    xxx喜得贵子  喜得千金  为我们xx家族在填一员。
				家族囍讯    XXX与xxx，喜结良缘。
				XXX加入家族
				-->
				 </td>
				</tr>
				</c:forEach>
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


<script type="text/javascript" src="//js.users.51.la/20906883.js"></script>
</body>

</html>