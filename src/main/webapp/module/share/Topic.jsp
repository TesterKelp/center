<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/defect.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
	<%@ include file="/module/common/header.jsp"%>
	<div class="wrapper wrapper-content">
		<!--   <div class="wrapper wrapper-content animated fadeInRight"> -->
		<div class="row" id="user">
			
				<br> <br>
				<c:forEach items="${topicList}" var="a">
					<div class="col-sm-4">
						<div class="contact-box">
							<a href="topiccover.do?topicid=${a.topicid}">
								<div class="col-sm-4">
									<div class="text-center">
										<img alt="image" class="img-circle m-t-xs img-responsive"
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

				</c:forEach>


				<!-- 
            
            <div class="col-sm-4">
                <div class="contact-box">
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="../usercenter/face/a2.jpg">
                                <div class="m-t-xs font-bold">射鸡师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>高圆圆</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                            <address>
                            <strong>Baidu, Inc.</strong><br>
                            E-mail:xxx@baidu.com<br>
                            Weibo:<a href="">http://weibo.com/xxx</a><br>
                            <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
        
       -->







			


		</div>
	</div>

	<!-- 全局js -->
	<script src="/test/js/jquery.min.js?v=2.1.4"></script>
	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>

	<script src="js/user.js"></script>

	<!-- 自定义js -->
	<script src="/test/js/content.js?v=1.0.0"></script>



	<script>
        $(document).ready(function () {
            $('.contact-box').each(function () {
                animationHover(this, 'pulse');
            });
        });
    </script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->

</body>

</html>
