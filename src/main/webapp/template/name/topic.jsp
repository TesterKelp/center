<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖_${m.item_name}_精品专题</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="gray-bg">
	<%@ include file="/template/name/htmlheader.jsp"%>
	<div class="wrapper wrapper-content">
		<!--   <div class="wrapper wrapper-content animated fadeInRight"> -->
		<div class="row" id="user"  style="min-height: 800px; ">
				<br> <br>
				<c:forEach items="${topicList}" var="a">
					<c:if test="${a.top!=3}">
					<div class="col-sm-4">
						<div class="contact-box"  style="max-height:213px" >
							<a href="/${item}/topiccover_${a.topicid}.do">  <!-- topiccover.do?topicid=${a.topicid} -->
								<div class="col-sm-4">
									<div class="text-center">
										<img alt="image" class="img-circle m-t-xs img-responsive"   style="max-height:180px" 
											src="${a.topicimage}">
										<!--  <div class="m-t-xs font-bold">CTO</div>-->
									</div>
								</div>
								<div class="col-sm-8">
									<h3>
										<strong >${a.topicname}</strong>
									</h3>
 									<address style="height: 120px; line-height: 25px; overflow: hidden"> 

										<c:if test="${fn:length(a.topicintro)<=100}">${a.topicintro}</c:if>
										<c:if test="${fn:length(a.topicintro)>100}">${fn:substring(a.topicintro,0,100)}</c:if>

									</address>
								</div>
								<div class="clearfix"></div>
							</a>
						</div>
					</div>
					</c:if>
				</c:forEach>






			


		</div>
	</div>
    
	<div class="clear"></div>
	
 <%@ include file="/template/name/footer.jsp"%> 
	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script>
        $(document).ready(function () {
            $('.contact-box').each(function () {
                animationHover(this, 'pulse');
            });
        });
    </script>
	<script src="/template/kwz/kjs/common.js"></script>
</body>

</html>
