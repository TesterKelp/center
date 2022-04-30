<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖_${m.item_name}_${topic.topicname}精品专题</title>


<link rel="shortcut icon" href="favicon.ico">
<link href="/template/wz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/wz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/wz/css/plugins/iCheck/custom.css" rel="stylesheet">

<link href="/template/wz/css/defect.css" rel="stylesheet">
<link href="/template/wz/css/style.css?v=4.1.0" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="/template/wz/top/style.css"/>
</head>

<body class="gray-bg">
		<%@ include file="/template/wz/htmlheader.jsp"%>
	<div class="wrapper wrapper-content">
		<div class="row" >

			
				<div class="ibox float-e-margins">
					<div class="ibox-content mailbox-content">
						<div class="file-manager">
							<br> <br>



							<div class="col-sm-12">
								<div class="contact-box" style="min-height: 850px; width:1280px;margin:0 auto;" >
									<div class="col-sm-2">
										<div class="text-center">
											<img align="center" alt="image"
												class="img-circle m-t-xs img-responsive" src="${topic.topicimage}">
											<div class="m-t-xs font-bold">${topic.topicname}</div>
											<hr>
											<a href="/blog/Blog.do?userid=${userid}"> 分享者</a> <br> <br>
										</div>
										${topic.topicintro}
									</div>
									<div class="col-sm-10">
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

    <%@ include file="/template/wz/footer.jsp"%>  
	<script src="/template/wz/kjs/common.js"></script>
	<script src="/template/wz/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/wz/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/template/wz/js/content.js?v=1.0.0"></script>
	<!-- iCheck -->
	<script src="/template/wz/js/plugins/iCheck/icheck.min.js"></script>
	<script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>

</body>

</html>
