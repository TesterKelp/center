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
<style type="text/css">

.channel-num {
    display: block;
    float: left;
    margin-top: 1px;
    margin-bottom:-10px;
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
		<%@ include file="/template/kwz/htmlheader.jsp"%>
	<div class="wrapper wrapper-content">
		<div class="row">

			
				<div class="ibox float-e-margins">
					<div class="ibox-content mailbox-content">
						<div class="file-manager">
							<br> <br>



							<div class="col-sm-12">
								<div class="contact-box" style="min-height: 950px;" >
									<div class="col-sm-3" style="border-right:1px dashed #A9A9A9 ;min-height: 950px;">
									
										 <h3><a href="/${item}/topiccover_${topic.topicid}.do">${topic.topicname}</a></h3>
										 <hr>
										
											<address>
											<strong>
												<ul class="folder-list m-b-md" style="padding: 0">	
           <c:forEach items="${topicList}" var="a" varStatus="status">
              <li><a href="/${item}/${topic.topicid}/topic_${a.articleid}.do"> <div  class="channel-num">${ status.index + 1}</div>   ${a.articletitle }</a></li>				
			</c:forEach>

												</ul>
										</address>
										
										
										
										
									</div>
									<div class="col-sm-9">
										<div class="col-sm-12" style="background-color: #eee;margin-bottom:5px;text-align:center"> <h3><strong>${topic.topicname}</strong></h3></div>
										  
										<div class="col-sm-3" >
										<img align="center" alt="image" style="width:150px;float:right" class="img-circle m-t-xs img-responsive"  src="${topic.topicimage}">	
										</div>  
										  <div class="col-sm-5"   style="float:left;padding-top:40px;">
									               ${topic.topicintro}
										  </div>
										  <div class="col-sm-4" style="padding-top:20px;"  >
									 <li style="float:right;line-height:35px">   分享者 ：<a href="/blog/${member.userid}.do"> ${member.username}</a> </li>
									 
									   
										  </div>
										  <div class="col-sm-12" style="height:20px;">
										  </div>
									  
										 
										  
									<div class="col-sm-12" style="border:1px solid #eee;padding:0px;margin:0px">	  
										<address>
											<strong >
												<ul class="folder-list m-b-md" style="padding: 0">
													


           <c:forEach items="${topicList}" var="a" varStatus="status">
			<c:if test="${status.index %2 == 0}">
                <li style="background-color: #eee;line-height:35px;padding-left:30px;">  
                <a href="/${item}/${topic.topicid}/topic_${a.articleid}.do">第${ status.index + 1}节：--- ${a.articletitle }</a> </li>
           </c:if>  			
         <c:if test="${status.index %2 == 1}">
                <li style=";line-height:35px;padding-left:30px;">  
                    <a href="/${item}/${topic.topicid}/topic_${a.articleid}.do">第${ status.index + 1}节：--- ${a.articletitle }</a> </li>
           </c:if> 		
             											
			</c:forEach>


												</ul>
										</address>
										</div>
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
