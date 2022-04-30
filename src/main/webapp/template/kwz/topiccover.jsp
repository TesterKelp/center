<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${site.sitename}_${m.item_name}_${topic.topicname}精品专题</title>
<meta name="keywords" content="${topic.tkeyword}" />
<meta name="description" content="${topic.tdepict}" />
<link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/kwz/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="/template/kwz/css/animate.css" rel="stylesheet">
<link href="/template/kwz/css/defect.css" rel="stylesheet">
<link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
		<%@ include file="/template/kwz/htmlheader.jsp"%>
	<div class="wrapper wrapper-content">
		<div class="row">

			
				<div class="ibox float-e-margins">
					<div class="ibox-content mailbox-content">
						<div class="file-manager">
							<br> <br>


							

							<div class="col-sm-12">
								<div class="contact-box" style="min-height: 950px;" >
									<div class="col-sm-2">
										<div class="text-center">
											<img align="center" alt="image"
												class="img-circle m-t-xs img-responsive" src="${topic.topicimage}">
											<div class="m-t-xs font-bold">${topic.topicname}</div>
											<hr>
											<a href='/blog/${member.userid}.do' > 分享者:${member.username}</a> <br> <br>
										</div>

										${topic.topicintro}
									</div>
									<div class="col-sm-10">
										<!--    <h3><strong>${topicname}</strong></h3>-->
										<address>
											<strong>
												<ul class="folder-list m-b-md" style="padding: 0">
													


           <c:forEach items="${topicList}" var="a" varStatus="status">
			
              <li>   <a href="/${item}/${topic.topicid}/topic_${a.articleid}.do"> 第${ status.index + 1}节：--- ${a.articletitle }</a>  </li>
            
             											
																
			</c:forEach>





												</ul>
										</address>
									</div>
									<div class="clearfix"></div>

								</div>
							</div>
						</div>
					</div>
				</div>

		</div>
	</div>

    
	<div class="clear"></div>
	
 <%@ include file="/template/kwz/footer.jsp"%> 

	<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/template/kwz/js/content.js?v=1.0.0"></script>
	<!-- iCheck -->
	<script src="/template/kwz/js/plugins/iCheck/icheck.min.js"></script>
	<script src="/template/kwz/kjs/common.js"></script>
</body>

</html>
