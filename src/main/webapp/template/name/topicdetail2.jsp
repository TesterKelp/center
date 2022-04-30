<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖_${m.item_name}_${topicname}精品专题</title>
<meta name="description" content="<c:if test="${fn:length(article.articleitd)>100}">${fn:substring(article.articleitd,0,100)} ...</c:if><c:if test="${fn:length(article.articleitd)<100}">${article.articleitd} ...</c:if>" />
<link href="/template/name/css/bootstrap.min.css?v=3.3.6"
	rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">

<style type="text/css">
.channel-num {
	display: block;
	float: left;
	margin-top: 1px;
	margin-bottom: -10px;
	margin-right: 6px;
	height: 16px;
	width: 16px;
	line-height: 16px;
	text-align: center;
	font-size: 12px;
	background-color: #777;
	color: #fff;
}
</style>


</head>

<body class="gray-bg">
	<%@ include file="/template/name/htmlheader.jsp"%>
	<div class="wrapper wrapper-content">
		<div class="row">


			<div class="ibox float-e-margins">
				<div class="ibox-content mailbox-content">
					<div class="file-manager">
						<br> <br>

						<div class="col-sm-12">
							<div class="contact-box" style="min-height: 950px;">
								<div class="col-sm-3" style="min-height: 950px;">
									<h3>
										<strong> <a
											href="/${m.item_directorie}/topiccover_${topic.topicid}.do">${topic.topicname}</a>
										</strong>
									</h3>
									<hr>

									<address>
										<strong>
											<ul class="folder-list m-b-md" style="padding: 0">

												<c:forEach items="${topicList}" var="a" varStatus="status">
													<li><a
														href="/${m.item_directorie}/${topic.topicid}/topic_${a.articleid}.do">
															<div class="channel-num">${ status.index + 1}</div>
															${a.articletitle }
													</a></li>
												</c:forEach>
											</ul>
									</address>



								</div>
								<div class="col-sm-9"
									style="border-left: 1px dashed #A9A9A9; min-height: 950px;">
									<div class="col-sm-12"
										style="background-color: #eee; border-bottom: 1px dashed #A9A9A9;">
										<div class="text-center article-title">
											<h2>
												<b> ${article.articletitle} </b>
											</h2>
										</div>
									</div>
									<div class="col-sm-12"
										style="padding-left: 30px; margin-top: 20px; line-height: 30px;">${article.articlecontent}</div>
								</div>


								<div class="clearfix"></div>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>


		<div class="clear"></div>

		<%@ include file="/template/name/footer.jsp"%>
		<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
		<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
		<script src="/template/name/js/content.js?v=1.0.0"></script>
		<script src="/template/name/js/plugins/iCheck/icheck.min.js"></script>
		<script src="/template/name/kjs/common.js"></script>

</body>

</html>
