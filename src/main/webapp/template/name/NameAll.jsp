<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>身在江湖之_${m.item_name}</title>
    <meta name="Keywords" Content="<c:forEach items="${menuList}" var="a" varStatus="status">${a.catename},</c:forEach>">
    <link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/template/name/css/animate.css" rel="stylesheet">
  <!--  <link href="/template/name/css/defect.css" rel="stylesheet">  宽屏去掉 defect.css -->
    <link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/template/name/style.css" />
    <!-- 登录样式-->
    <link rel="stylesheet" type="text/css" href="/template/name/login/login.css">
    <!-- 专题样式 -->
        <link rel="stylesheet" href="/template/name/2/css/style.css">
        <script type="text/javascript" src="/template/name/2/js/jquery.js"></script>
        <script type="text/javascript" src="/template/name/2/js/jquery.SuperSlide.2.1.1.js"></script>
        
   <!-- 今日推荐样式 -->     
    <link href="/template/name/indextop/zimeiti.css" type="text/css" rel="stylesheet"/>

<link rel="stylesheet" href="/template/name/name/NameAll.css" type="text/css" />
</head>

<body >
<%@ include file="/template/name/htmlheader.jsp"%>
  
    <Br><br>    
                 

       

    <div id="hpage" style="margin-left:45px ;padding-right:65px;">

    <div id="righ">
      <ul>
        <lli> 
        <c:forEach items="${lst}" var="a" varStatus="status">
        <c:if test="${a.namenumber==1}">
				<div class="imgh">
							<a href="/name/${a.nameid}/name.${suffix}">${a.name}</a>
						</div>
                </c:if>
		</c:forEach>
        </lli>
   <br class="clear" />
   <lli>
   		        <c:forEach items="${namelst}" var="a" varStatus="status">
        <c:if test="${a.namenumber==2}">
				<div class="imgh2">
							<a href="/name/${a.nameid}/name.${suffix}">${a.name}</a>
						</div>
                </c:if>
		</c:forEach>
   </lli>
      </ul>
      <br class="clear" />
   </div>

</div>

    
        
        
        
        
        
 <!-- -------------专题开始---------------  -->

				<div class="ato-content  clearfix" style="min-height: 800px;">
					<div class="ato-list">
						<ul>
							<c:forEach items="${topicList}" var="a" varStatus="status"
								begin="1" end="6" step="1">
								<c:if test="${a.top==1}">
									<li>
										<div>
											<img src="${a.topicimage}" alt="" class="ato-logo001">
										</div>
										<h3>${a.topicname}</h3>
										<p>
											<c:if test="${fn:length(a.topicintro)>100 }">${ fn:substring( a.topicintro ,0,100)} ...</c:if>
											<c:if test="${fn:length(a.topicintro)<=100 }">${  a.topicintro }</c:if>
										</p> <a href="/${item}/topiccover_${a.topicid}.do"
										class="ato-more">查看详情</a>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<br>
<!-- -------------专题结束--------------  -->
   

    <!-- 全局js -->
    <script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/name/js/content.js?v=1.0.0"></script>
   <script src="/template/name/kjs/common.js"></script>
   <script src="/template/name/kjs/portal.js"></script>
   <%@ include file="/template/name/footer.jsp"%>  </div>

</body>

</html>
