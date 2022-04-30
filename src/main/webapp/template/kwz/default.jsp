<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>H+ 后台主题UI框架 - 首页示例四</title>
    <link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/template/kwz/css/animate.css" rel="stylesheet">
  <!--  <link href="/template/kwz/css/defect.css" rel="stylesheet">  宽屏去掉 defect.css -->
    <link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/template/kwz/style.css" />

    
    <!-- 登录样式-->
    <link rel="stylesheet" type="text/css" href="/template/kwz/login/login.css">
    <!-- 专题样式 -->
        <link rel="stylesheet" href="/template/kwz/2/css/style.css">
        <script type="text/javascript" src="/template/kwz/2/js/jquery.js"></script>
        <script type="text/javascript" src="/template/kwz/2/js/jquery.SuperSlide.2.1.1.js"></script>
        
   <!-- 今日推荐样式 -->     
    <link href="/template/kwz/indextop/zimeiti.css" type="text/css" rel="stylesheet"/>

</head>

<body >
<%@ include file="/template/kwz/htmlheader.jsp"%>
  
    <Br><br>    
            <div class="wrapper wrapper-content" algin="center">
      			 
					<div class="row">
			<div class="ibox-content" style="min-height: 800px;">
			
					
			

					
					
				<div class="col-lg-6">

















  <div class="mod tbox" id="today_news" alog-group="log-todaynews" style="padding-bottom:30px">
                <div class="hd"><h3>今日推荐</h3></div> 
                <div class="bd" style="overflow:hidden;width:100%;">
                     <ul class="w-ul ulist" style="width:100%">
                                             

    <c:forEach items="${clst}" var="a" varStatus="status" begin="1" end="14" step="1">
	
         <li style="overflow:hidden;width:50%;"><a href="#" class="art-title">${a.articletitle}</a><a href="#" class="art-author">${a.catename}</a></li>
                                              
        </c:forEach> 




 
                                                </ul>
                </div>
            </div>







								






















							</div>	
							
							
							
							
							
							
							
							
					<div class="col-lg-3" >	
			
			
			
			
			
	<div class="mainTopL" >
         <ul>
         <div class="items">
           <div class="itemOne">
              <span class="itme1"><b></b>免费福利</span>
           </div>
         </div>
         <div class="items">
           <div class="itemOne">
              <span class="itme2"><b></b>中国移动免费流量300M</span>
           </div>
         </div>
         <div class="items">
           <div class="itemOne">
              <span class="itme3"><b></b>中国联通免费流量300G</span>
           </div>
         </div>
         <div class="items">
           <div class="itemOne">
              <span class="itme4"><b></b>教育|法律|咨询|翻译</span>
           </div>
         </div>
         <div class="items">
           <div class="itemOne">
              <span class="itme5"><b></b>零售|家政|餐饮|旅游</span>
           </div>
         </div>
         <div class="items">
           <div class="itemOne">
              <span class="itme6"><b></b>广告|媒体|艺术|出版</span>
           </div>
         </div>
         <div class="items">
           <div class="itemOne">
              <span class="itme7"><b></b>IT|互联网|通信</span>
           </div>
         </div>


  
         </ul>
      </div>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
				
				
				
			</div>
















				<div class="col-lg-3">
					<div class="ld_form" style="padding-left: 1px;">
						<form id="login-form" method="post" action="login_action.asp">
							<h3 class="form_title">用户登录</h3>
							<p>
								<input type="text" name="userName" id="userName" />
							</p>
							<p>
								<input type="password" id="password" name="password"
									class="ld_pass" />
							</p>
							<div class="ld_login">
								<div class="ld_login_in" id="bt-login">马上登录</div>
								<div id="login-msg"></div>
							</div>
							<input type="hidden" id="rememberMe" name="rememberMe"
								value="false" /> <label><input name="Fruit"
								type="checkbox" style="margin-top: 10px;" value="" />下次自动登录</label> | <a
								href="">注册账号</a> <br />
						</form>
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

</div>
					</div>



            </div>               

                     
     
          
            

        
        
        
        
        
        
        
 
   
        
   



    <!-- 全局js -->
    <script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/kwz/js/content.js?v=1.0.0"></script>

   
  <script type="text/javascript">
$.ajax({
	type : "GET",
	url : "/module/admin/getUserName.do",
	dataType : "text",
	success : function(data) {
		var  aa=	document.getElementById("defect").innerHTML;
		var  bb= document.getElementById("defect");
		bb.innerHTML=aa+data ;
	}
});	
</script> 
   
   

</body>

</html>
