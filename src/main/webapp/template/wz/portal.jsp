
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>身在江湖_${m.item_name}</title>
    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="/template/wz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/wz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
  
<!-- <link href="/template/wz/css/animate.css" rel="stylesheet">   -->   
    
	<link href="/template/wz/css/defect.css" rel="stylesheet"> <!-- 宽屏去掉 defect.css -->
    <link href="/template/wz/css/style.css?v=4.1.0" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/template/wz/pic/style.css" />
    <link rel="stylesheet" type="text/css" href="/template/wz/login/login.css">
    <link rel="stylesheet" type="text/css" href="/template/wz/2fuli/css/demo.css">

		<link href="/test/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/template/wz/top/style.css"/>


    <style type="text/css">
	.demo{
		padding: 2em;background: #fff;
	}
	.serviceBox{
		border: 1px solid #ededed;
		padding: 30px 30px 30px 50px;
		position: relative;
		transition: all 0.5s ease 0s;
	}
	.serviceBox:hover{
		border-color: #41d7f7;
	}
	.serviceBox:before,
	.serviceBox:after{
		content: "";
		display: block;
		width: 50px;
		height: 5px;
		background: #41d7f7;
		position: absolute;
		left: 0;
		opacity: 0;
		transition: all 0.5s ease 0s;
	}
	.serviceBox:before{
		top: -3px;
	}
	.serviceBox:after{
		bottom: -3px;
	}
	.serviceBox:hover:before,
	.serviceBox:hover:after{
		left: 40px;
		opacity: 1;
	}
	.serviceBox .service-icon{
		display: inline-block;
		position: absolute;
		top: 33%;
		left: 23px;
		font-size: 45px;
		color: #41d7f7;
		opacity: 0.3;
		transition: all 0.5s ease-in 0s;
	}
	.serviceBox:hover .service-icon{
		opacity: 1;
	}
	.serviceBox .title{
		font-size: 16px;
		font-weight: 700;
		color: #41d7f7;
		margin-bottom: 15px;
	}
	.serviceBox .description{
		font-size: 13px;
		color: #666;
		line-height: 20px;
	}
	@media only screen and (max-width: 990px){
		.serviceBox{ margin-bottom: 30px; }
	}
</style>
    
<link href="/template/wz/0/css/news.css" type="text/css" rel="stylesheet" />
    
        <link rel="stylesheet" href="/template/wz/2/css/style.css">
        <script type="text/javascript" src="/template/wz/2/js/jquery.js"></script>
        <script type="text/javascript" src="/template/wz/2/js/jquery.SuperSlide.2.1.1.js"></script>
    
    
    
    
</head>

<body class="gray-bg">

<style type="text/css">
.w1 {width: 1400px;margin: 0 auto;}
.mt20 {margin-top: 20px;}
.clear{ display: block;}
.box { background-color: #fff;}
.jh_r { float: right; width: 700px;}
.jh_r .ti_01 {
    height: 42px;
    overflow: hidden;
}
.ti_01 {
    font-size: 12px;
    height: 50px;
    line-height: 50px;
    font-weight: bold;
    background: #fff;
    margin-bottom: 6px;
}
.ti_01:before {
    float: left;
    content: '';
    display: block;
    width: 3px;
    height: 20px;
    margin: 15px 10px 15px 5px;
    background: #149eff;
}
.ti_01 .span {
    float: right;
    font-weight: normal;
    font-size: 10px;
    color: #999;
    line-height: 50px;
}
.ti_01 .span a {
    font-size: 12px;
    display: inline-block;
    height: 25px;
    line-height: 25px;
    padding: 0 5px;

}

a {
    text-decoration: none;
    color: #555;
    font-size: 13px;
    -webkit-transition: all .3s ease-in-out;
    -moz-transition: all .3s ease-in-out;
    -o-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
    font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif;
}




li a  {

    text-decoration: none;
    color: #555;
    font-size: 13px;
}


.jh_l ul li .fl_t, .jh_r ul li .fl_t {
    color: #999;
}


div,li, ul {
    margin: 0;
    padding: 0;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}


.ti_01 .mo {
    color: #09f;
}

.ti_01 .c {
    color: #09f;
    font-size: 16px;
}
.list {
    font-family: 宋体;
 
}

h2 {
    margin: 0;
    padding: 0;
    word-wrap: break-word;
}
.jh_r ul {
    float: left;
    margin-left: 20px;
    width: 280px;
    height: 340px;
    margin-bottom: 18px;
}



.jh_l {
    float: left;
    width: 700px;
}
.jh_l .ti_01, .jh_r .ti_01 {
    height: 42px;
    overflow: hidden;
}
.jh_l ul, .jh_r ul {
    float: left;
    margin-left: 20px;
    width: 280px;
    height: 340px;
    margin-bottom: 18px;
}
.jh_l ul li, .jh_r ul li {
    height: 29px;
    line-height: 29px;
    font-size: 13px;
    color: #CCC;
    overflow: hidden;
}
</style>





<style type="text/css">

.whitebg { background: #fff; border-radius: 3px; padding: 5px; margin-bottom: 5px; overflow: hidden; }
.htitle { font-size: 16px; line-height: 40px; border-bottom: 1px solid #eee; color: #484848; font-weight: normal; position: relative; margin-bottom: 10px; }
.htitle:after { content: ""; position: absolute; width: 60px; height: 2px; content: ""; background: #000; left: 0; bottom: 0; -moz-transition: all .5s ease; -webkit-transition: all .5s ease; transition: all .5s ease; }
.htitle:hover:after { width: 80px; }
.hnav { float: right }
.hnav a { display: block; margin-right: 10px; padding-right: 10px; float: left; position: relative }
.hnav a:after { position: relative; content: "/"; right: -10px; bottom: 0; color: #ccc }
.hnav a:last-child::after { content: "" }
.zhuanti ul { overflow: hidden; padding: 1px 0 2px 1px; position: relative; }
.zhuanti ul:before { content: ""; position: absolute; background: #fff; width: 1px; height: 100%; left: 10px }
.zhuanti ul:after { content: ""; position: absolute; background: #fff; width: 100%; height: 0px; bottom: 20px; left: 0; }
.zhuanti li { float: left; width: 20%; border-bottom: #eee 0px solid; border-left: #eee 0px solid; overflow: hidden; padding: 1px 10px 1px 10px; -moz-transition: all .5s ease; -webkit-transition: all .5s ease; transition: all .5s ease; }
.ztpic { width: 100%; height: 150px; overflow: hidden; border-radius: 3px; background: #CCC; display: block }
.ztpic img { display: inline-block; width: 100%; min-height: 100%; height: auto; vertical-align: middle; transition: all .5s ease-out .1s; }
.zhuanti li b { display: block; width: 100%; overflow: hidden; height: 25px; line-height: 25px; margin: 1px 0; text-overflow: ellipsis; white-space: nowrap; overflow: hidden; }
.zhuanti li span { color: #999; overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 3; font-size: 14px; height: 62px; }
.readmore { margin: 10px 0 0 0; color: #096; display: block; }
.readmore:before { content: "+"; color: #063 }
.zhuanti li:hover { background: #fff; box-shadow: #ccc 1px 1px 8px; }
.zhuanti li:hover img { transform: scale(1.05) }
.H_title02{ padding:10px 0 0; margin:0; height:36px; line-height:26px; border-bottom:solid 2px #e6e6e6; position:relative; font-size:16px;}
.H_title02 a.more{ display:block; float:right; width:32px; height:36px; background:url(../images/H_h4More.jpg) no-repeat center;}
.H_title02 b{ display:inline-block; height:26px; border-bottom:solid 2px #c2d94e; color:#38957d;}
h4 {
    display: block;
    -webkit-margin-before: 1.33em;
    -webkit-margin-after: 1.33em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}
</style>













<script type="text/javascript">
var CurrentHotScreen = 0 ;

function setHotQueryList(screen){
	var Vmotion = "forward" ;
	var MaxScreen = 7 ;
	if(screen >= MaxScreen){
		screen = 0 ;
		Vmotion = "reverse" ;
	}
	cleanallstyle();
	document.getElementById("focus_"+screen).className = "up" ;
	if(null!=hot_query_td.filters){
		hot_query_td.filters[0].apply();
		hot_query_td.filters[0].motion = Vmotion;
	}
	for(i=0;i<MaxScreen;i++){
		document.getElementById("switch_"+i).style.display = "none" ;
	}
	document.getElementById("switch_"+screen).style.display = "block" ;
	if(null!=hot_query_td.filters){
		hot_query_td.filters[0].play();
	}
	CurrentHotScreen = screen ;
}

function refreshHotQuery(){
	refreshHotQueryTimer = null;
	setHotQueryList(CurrentHotScreen+1);
	refreshHotQueryTimer = setTimeout('refreshHotQuery();', 5000);
}
</script>

<%@ include file="/template/wz/htmlheader.jsp"%>

            <div class="wrapper " style="margin-top:-2px;">
      			 
					<div class="row">
			<div class="ibox-content" style=" width:1280px; margin:0 auto;">
			
					
			<div class="col-lg-3">	
			
			
			
			
			
			<div class="mainTopL">
         <ul>
         
         <c:forEach items="${Flst}" var="a" begin="0" end="6" step="1" varStatus="v">	
         <div class="items">
           <div class="itemOne">
              <span class="itme${v.index+1}"><b></b><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></span>
           </div>
         </div>
       	</c:forEach>  
         
     
       


  
         </ul>
      </div>
			

			

				
				
				
			</div>

					
					
				<div class="col-lg-6">

								<div class="topnewsbox" style="margin-top: 0px ;margin-bottom: 0px">
									<div class="topnews">
										<div class="topnewspic" id="hotsearchlist"
											style="filter: progid:DXImageTransform.Microsoft.GradientWipe(GradientSize=0.25, wipestyle=0, motion=forward)">

								<c:forEach items="${clst}" var="a" begin="0" end="6" step="1"
									varStatus="v">

									<div id="switch_${v.index}">
									
									<c:if test="${a.pdir != item}"> 
									<a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" target="_blank"> <img
											width="414" height="243" alt="${a.articletitle}"
											src="${a.picaddress}" /></a>
									</c:if>
									
									<c:if test="${a.pdir == item}"> 
									<a href="/${item}/${a.catedirectory}/article_${a.articleid}.do" target="_blank"> <img
											width="414" height="243" alt="${a.articletitle}"
											src="${a.picaddress}" /></a>
									</c:if>
										
											
											
											
											
											
											
											
									</div>
								</c:forEach>


							</div>

										<div class="topnewslist">
											<img src="/template/wz/0/images/jrjd.jpg" width="253"
												height="25" alt="今日焦点" />
											<ul>
											
											<c:forEach items="${clst}" var="a" begin="0" end="6" step="1" varStatus="v">	
			 <c:if test="${a.pdir != item}">  
			<li><a class="up" id="focus_${v.index}" onmouseover="show_focus_image(${v.index});"
							href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a></li>	
				 </c:if>						
			 <c:if test="${a.pdir == item}">  
			 <li><a class="up" id="focus_${v.index}" onmouseover="show_focus_image(${v.index});"
							href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a></li>	
			 
			  </c:if>
			
													</c:forEach>
											
											
											
											</ul>
										</div>

									</div>


								</div>









							</div>	
					
					
				<div class="col-lg-3">
		
					<div class="ld_form" style="padding-left: 1px;float:right">
					
						<form id="login-form-login" method="post" align="center" style="display: none;text-algin:center">
						<table cellpadding="0" cellspciong="1" >
							  <tr>
                                <td ><a href="/module/usercenter/personinfo.jsp">用户中心 </a></td>
                                <td><a href="/module/usercenter/personinfo.jsp" style="padding-left:30px;line-height:32px">个人信息 </a> </td>
                              </tr>
							<tr>
                                <td ><a href="/blog/MyBlog.do">我的博客 </a></td>
                                <td><a href="/module/share/MyArticleManage.jsp"  style="padding-left:30px ;line-height:32px">我的分享 </a></td>  
                              </tr>
							<tr>
                                <td ><a href="/module/share/MyArticleManage.jsp">我的分享 </a></td>
                                <td><a href="/module/share/ArticleCreate.jsp"  style="padding-left:30px;line-height:32px">发布分享</a></td>  
                              </tr>
                            <tr>
                                <td ><a href="/module/boke/BlogCate.jsp">博客分类 </a></td>
                                <td><a href="/module/boke/BlogSettingPage.do"  style="padding-left:30px;line-height:32px">博客设置 </a></td>  
                              </tr>
                             <tr>
                                <td ><a href="/module/share/MyTopic.do">专题管理 </a></td>
                                <td><a href="/module/share/TopicCreate.jsp"  style="padding-left:30px;line-height:32px">创建专题 </a></td>  
                              </tr>
                              <tr>
                                <td ><a href="/nav/IndexSet.do">背景设置</a></td>
                                <td><a href="/nav/NavManage.do"  style="padding-left:30px;padding-left:32px">导航管理 </a></td>  
                              </tr>
                             <tr>
                                <td ><a href="javascript:void(0);"  onclick="userlogout()">退出登录</a></td>
                                <td><a href="/module/share/TopicCreate.jsp"  style="padding-left:30px;line-height:32px"></a> </td>
                              </tr>
							</table>
						</form>
						
						
						   
                             
                            
						
						
						<form id="login-form-logout" method="post"  style="display: none">
							<h3 class="form_title">用户登录</h3>
							<p><input type="text"   name="userName"  id="j_username" /></p>
							<p><input type="password" id="j_password" name="password" class="ld_pass" /></p>
							<div class="ld_login">
								<div class="ld_login_in" onclick="userLogin()"  id="bt-login">马上登录</div>
								<div id="login-msg"></div>
							</div>
							<label>
							<label><input id="rememberMe" type="checkbox" value="true" />记住登录 </label> |
							 <a href="/module/usercenter/register.jsp">注册账号</a> <br />
						</form>
						
						
						     
						
					</div>
		

			
			
			</div>	
			
			
			
			
			
			
			
					
	<div class="col-lg-12">				
				
	<div class="zhuanti whitebg">
    <!--   <h4 class="H_title02"><b>笑笑图</b></h4> -->  
      <ul style="padding-top:10px">
				
			
							<c:set var="index" value="1" />
				<c:forEach items="${clst}" var="a" varStatus="status">
					<c:if test="${not empty a.picaddress}">
						<c:if test="${a.articletype=='6' and index<'11'}">
							<li><i class="ztpic">
							<c:if test="${a.pdir == item}">  
							<a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">
							<img src="${a.picaddress}"></a></i> 
							<b align="center"><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a></b>
							</c:if>
							
							
							<c:if test="${a.pdir != item}">  
							<a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">
							<img src="${a.picaddress}"></a></i> 
							<b align="center"><a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a></b>
							</c:if>
							
							
							</li>
							<c:set var="index" value="${index+1}" />
						</c:if>
					</c:if>
				</c:forEach>
			
			
			</ul>
    </div>
              
              
 
		
	</div>		
	 <div class="clear"></div>		
<!-- -------------topic start---------------  -->


<div class="ato-content  clearfix" >
          
            <div class="ato-list">
                <ul>
										<c:forEach items="${topicList}" var="a" varStatus="status" begin="1" end="5" step="1">
											<c:if test="${a.top==1}">
												<li>
													<div><img src="${a.topicimage}" alt="" class="ato-logo001"></div>
													<h3>${a.topicname}</h3>
													<p>
														<c:if test="${fn:length(a.topicintro)>100 }">${ fn:substring( a.topicintro ,0,100)} ...</c:if>
														<c:if test="${fn:length(a.topicintro)<=100 }">${  a.topicintro }</c:if>
													</p> <a href="/${item}/topiccover_${a.topicid}.do" class="ato-more">查看详情</a>
												</li>
											</c:if>
										</c:forEach>
									</ul>
            </div>
        </div>



<br>
<!-- -------------topic end---------------  -->




<div class="col-lg-12">










<style type="text/css"> 
 /*用css实现表格  */
 * {margin:0;padding:0} 
 #main {border-style:solid;border-width:0px;border-color:blue;} 
 #main ul{width:100%;height:auto;list-style:none;//decimal} 
 #main li {border-left:1px solid #E6E6E6;border-bottom:1px solid #E6E6E6;
 padding:15px;
 float:left;
 width:25%;
 background:#FFFFFF;
 text-align:center;
 line-height:33px} 
 #main li.b {border-bottom:1px solid #E6E6E6 ;} 
 #main li.r {border-right:1px solid #E6E6E6 ;} 
h2 { font-family: Arial,"PingFang SC","Microsoft YaHei",sans-serif;color: #333;  margin-left:5px;  margin-right:5px }
.title{float:left ; margin-left:5px; display: block; font-weight:800; font-weight:bold ; font-size:70;}
 .more{float:right;margin-right:5px;}
 .tit{ padding-left:15px; padding-top:10px; line-height: 20px;text-align:left}
 .im{width:110px;height:76px; margin:5px; float:left ; }
 span { color: #9A9A9A;font-size: 12px; padding-top:0px;}

</style>

<div id="main"> 
<div style="width:100%;border:1px solid #E6E6E6; color: #333;padding-left:20px;line-height: 40px;background:#F5F5F5;" >
  <h3  style="line-height:40px;color: #333" >  <a class="title" >精品推荐 </a> </h3>
    <a class="more"></a>
    <div class="clear"></div>
</div>

     <ul> 
     
     <!-- 
         <li>  
         <div style="float:left;position:absolute; width：120px;">
         <img src="/index/bg/win8.jpg"  class="im" /></div>
         <div style="margin-left:120px;float:left ;height:82px;">
         <div class="tit">  <a href="" > 职场防小职场防小职场防小人：几招识破职场“心理阴暗”人 </a> </div>
         <span style="float:left;padding-left:15px;"><i class="fa fa-calendar"></i>2016-06-11   </span>
         </div>
         
         </li>
 		<li class="r">
 		<div style="float:left;position:absolute; width：120px;">
         <img src="/index/bg/win8.jpg"  class="im" /></div>
         <div style="margin-left:120px;float:left ;height:82px;">
         <div  class="tit">  <a href="" > 职场防小人：几招识破职场“心理阴暗”人 </a> </div><br>
         <span style="float:left;padding-left:15px;"><i class="fa fa-calendar"></i>2016-06-11   </span>
         </div>
		</li>  -->
 <c:set var="index" value="1" />
   <c:forEach items="${clst}" var="a"  varStatus="v">
	
      <c:if test="${index<21 && not empty a.picaddress}"> 
      <c:if test="${index%4 !=0 }">        
         <li >
         <div style="float:left;position:absolute; width：120px;">
			<img src="${a.picaddress}"  class="im" /> </div>
         <div style="margin-left:120px;float:left ;height:82px;">
         <div class="tit"> 
    
         <c:if test="${item == a.pdir}"><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" >${a.articletitle}1 </a></c:if>
          <c:if test="${item != a.pdir}"><a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" >${a.articletitle} </a> </c:if>
         
         </div>
         <span style="float:left;padding-left:15px;"><i class="fa fa-calendar"></i>&nbsp; ${a.creattime}-${index}  </span>
         </div>
         </li> 
      </c:if>       

	  <c:if test="${index%4==0}">       	
            <li class="r">
            <div style="float:left;position:absolute; width：120px;">
			<img src="${a.picaddress}"  class="im"  /> </div>
         <div style="margin-left:120px;float:left ;height:82px;">
         <div class="tit"> 
         
         <c:if test="${item == a.pdir}"><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" >${a.articletitle}1 </a></c:if>
          <c:if test="${item != a.pdir}"><a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" >${a.articletitle} </a> </c:if>
          
          </div>
         <span style="float:left;padding-left:15px;"><i class="fa fa-calendar"></i>&nbsp; ${a.creattime}-${index}   </span>
         </div>
         </li>   
      </c:if>			
   	<c:set var="index" value="${index+1}" />
      </c:if>   
         
 </c:forEach>   

     </ul>
    
     </div>



</div>
 <div class="clear"></div>

 <Br> 

</div>
					</div>



            </div>               

                     
     
          
    <%@ include file="/template/wz/footer.jsp"%>         

        
        
        
        
        
        
        
 
   
        
   



    <!-- 全局js -->
    <script src="/template/wz/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/wz/js/bootstrap.min.js?v=3.3.6"></script>



    <!-- 自定义js -->
    <script src="/template/wz/js/content.js?v=1.0.0"></script>
    <!-- Flot -->
    <script src="/template/wz/js/plugins/flot/jquery.flot.js"></script>
    <script src="/template/wz/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="/template/wz/js/plugins/flot/jquery.flot.resize.js"></script>

    <!-- ChartJS-->
    <script src="/template/wz/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Peity -->
    <script src="/template/wz/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- Peity demo -->
    <script src="/template/wz/js/demo/peity-demo.js"></script>
   <script src="/template/kwz/kjs/portal.js"></script>
	<script src="/template/wz/kjs/common.js"></script>
     <script type="text/javascript">
            
     jQuery(".ato-content").slide({titCell:".ato-list-fl ul",mainCell:".ato-list ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:3});

        </script>

   
   
   
   <script type="text/javascript">		
function cleanallstyle(){
	for(i=0;i<7;i++){
		document.getElementById("focus_"+i).className = "" ;
	}
}

function show_focus_image(index){
	clearTimeout(refreshHotQueryTimer);
	setHotQueryList(index);
	refreshHotQueryTimer = setTimeout('refreshHotQuery();', 5000);
}

var refreshHotQueryTimer = null ;
var hot_query_td =  document.getElementById('hotsearchlist');
setHotQueryList(CurrentHotScreen);
refreshHotQueryTimer = setTimeout('refreshHotQuery();', 5000);
</script>
	
 
   
   

</body>

</html>
