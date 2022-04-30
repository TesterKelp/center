<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${site.sitename}<c:if test="${site.singleitem == '100' }">_${m.item_name}</c:if><c:if test="${site.singleitem == '200' }">_${m.item_name}</c:if> </title>
     <meta name="keywords" content="${m.keyword}" />
     <meta name="description" content="${m.depict}" />
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
<link href="/test/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">




</head>

<body >





<%@ include file="/template/kwz/htmlheader.jsp"%>
    <Br><br>    
            <div class="wrapper wrapper-content" algin="center">
      			 
					<div class="row">
			<div class="ibox-content" >
			
				<div class="col-lg-6">


 		 <div class="mod tbox" id="today_news" alog-group="log-todaynews" style="padding-bottom:30px">
                <div class="hd"><h3>今日推荐</h3></div> 
                <div class="bd" style="overflow:hidden;width:100%;">
                     <ul class="w-ul ulist" style="width:100%">
                        
    	<c:forEach items="${clst}" var="a" varStatus="status" begin="1" end="14" step="1">
        
<c:if test="${item == a.pdir}"><li style="overflow:hidden;width:50%;"><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" class="art-title">${a.articletitle}</a><a href="#" class="art-author">${a.catename}</a></li>                             
       </c:if>
<c:if test="${item != a.pdir}"><li style="overflow:hidden;width:50%;"><a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" class="art-title">${a.articletitle}</a><a href="#" class="art-author">${a.catename}</a></li>                             
         </c:if>
         
       
       
        </c:forEach> 
					 </ul>
                </div>
            </div>
		</div>	
							
							
							
							
							
							
							
							
					<div class="col-lg-3" >	
			
			
			
			
			
	<div class="mainTopL" >
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
















				<div class="col-lg-3">
					<div class="ld_form" style="padding-left: 1px;"> 
					
						<form id="login-form-login" method="post"  style="display: none">
				
								<table cellpadding="1" cellspciong="1" style="border:1px solid #E1E1E1 ;width:100%;height:260px">
							  <tr>
                                <td ><a href="/module/usercenter/index.do" style="padding-left:30px;line-height:32px">用户中心 </a></td>
                                <td><a href="/module/usercenter/personinfo.jsp" style="padding-left:30px;line-height:32px">个人信息 </a> </td>
                              </tr>
						
							<tr>
                                <td ><a href="/module/share/MyArticleManage.jsp" style="padding-left:30px;line-height:32px">我的分享 </a></td>
                                <td><a href="/module/share/ArticleCreate.jsp"  style="padding-left:30px;line-height:32px">发布分享</a></td>  
                              </tr>
                            <tr>
                                <td ><a href="/blog/BlogCate.jsp" style="padding-left:30px;line-height:32px">博客分类 </a></td>
                                <td><a href="/blog/BlogSettingPage.do"  style="padding-left:30px;line-height:32px">博客设置 </a></td>  
                              </tr>
                             <tr>
                                <td ><a href="/module/share/MyTopic.do" style="padding-left:30px;line-height:32px">专题管理 </a></td>
                                <td><a href="/module/share/TopicCreate.jsp"  style="padding-left:30px;line-height:32px">创建专题 </a></td>  
                              </tr>
                              <tr>
                                <td ><a href="/nav/IndexSet.do" style="padding-left:30px;line-height:32px">背景设置</a></td>
                                <td><a href="/nav/NavManage.do"  style="padding-left:30px;padding-left:32px">导航管理 </a></td>  
                              </tr>
                             <tr>
                                <td ><a href="javascript:void(0);"  onclick="userlogout()" style="padding-left:30px;line-height:32px">退出登录</a></td>
                                <td><a href="/blog/MyBlog.do" style="padding-left:30px;line-height:32px">我的博客 </a> </td>
                              </tr>
							</table>
						</form>
						
						
							
						
						<form id="login-form-logout" method="post"  style="display: none">
							<h3 class="form_title">用户登录</h3>
							<p><input type="text"   name="userName"  id="j_username" /></p>
							<p><input type="password" id="j_password" name="password" class="ld_pass" /></p>
							<div class="ld_login" style="padding-top:0px">
							    <label  id="info" style="color:Red;padding-top:0px">    </label>
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






















				<!-- -------------专题开始---------------  -->

				<div class="ato-content  clearfix" >
					<div class="ato-list">
						<ul style="margin:0 auto">
							<c:forEach items="${topicList}" var="a" varStatus="status"
								begin="1" end="7" step="1">
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
<style type="text/css">
.cont3{padding:0px 2%;margin-top:20px;}
.cont3c{width:48%;margin-left:0px;margin-right:10px;margin-bottom:15px;float:left;}
h2{height:35px;border:1px solid #e6e6e6;background:#fafafa;font-weight:normal; position:relative;}
h2 .left,h2 .right{float:left;font-size:14px;height:35px;line-height:35px;overflow:hidden;}
h2 .left span,h2 .left a{display:block;float:left;}
h2 .left span{background:url(/template/kwz/pic/con1l_03.png) no-repeat 14px;padding-left:26px;}
h2 .left a{margin:11px 0px 0px 6px;}
h2 .right{float:right;font-size:12px;width:71%;}
h2 .right .aa{float:right;margin-left:3px;}
h2 .right ul{float:left;color:#747474;width:87%;height:35px;overflow:hidden;}
h2 .right ul li{float:left;}
h2 .right ul li a,.aa .xl p a{color:#747474;margin:0px 6px;}
h2 .right ul li.hover{color:#1560bd;}
h2 .right ul li.hover a{color:#1560bd;border-bottom:1px solid #1560bd;}
h2 .more{font-size:14px;line-height:35px;padding:0px 8px;color:#a1a1a1;display:block;float:right;}
h2 .more:hover{color:#1560bd;}

/*---------cont3---------*/ 
.cot3nr{height:308px;padding:1px 1px 1px 1px;border:1px solid #e6e6e6;border-top:none;}
.cot3nr ul{padding-top:6px; padding-left:6px; padding-right:6px; padding-bottom:6px;font-size:12px;color:#757575;}
.cot3nr ul li a,.cot3nr ul li span{display:block;float:left;}
.cot3nr ul li a{width:75%;overflow:hidden;}
.cot3nr ul li span{float:right;padding-right:5px;}
.cot3nr ul li a{color:#757575;overflow:hidden;}
.cot3nr ul li a:hover{color:#3b3b3b;}
.cot3nr ul li{height:35px;line-height:35px;border-bottom:1px dotted #a8a8a8;overflow:hidden;padding-left:15px; vertical-align:middle; background:url(/template/kwz/pic/indexicon.png) no-repeat 5px; vertical-align:middle;}


</style>


<div class="col-lg-12">








<div class="col-lg-12"      style="padding-left:0px;padding-right:0px">

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
          <c:if test="${item != a.pdir}"><a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" >${a.articletitle} </a>  </c:if>
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
 
 <!--  
<div class="col-lg-2" >


<style type="text/css">
.widget {
    overflow: hidden;
    margin-bottom: 10px;
    padding: 15px 20px 10px 20px;
    border: 1px solid #eee;
    background-color: #fff;
}

.widget-tie h3 {
	position: relative;
	margin-bottom: 21px;
	padding-bottom: 10px;
	border-bottom: 1px solid #ebebeb;
	font-size: 16px
}
.widget-tie h3:after {
	position: absolute;
	bottom: -1px;
	left: 0;
	width: 70px;
	height: 1px;
	background: #e5e6e0;
	content: ""
}
.widget ul {
	margin: 0;
	list-style: none
}
.divCatalog li {
	float: left;
	width: 33.33333%
}
.divPrevious li {
	position: relative;
	overflow: hidden;
	margin-top: 20px
}
.divPrevious li .previous-one-img {
	position: relative;
	float: left;
	margin-top: 3px;
	width: 75px;
	height: auto;
	max-height: 75px
}
.divPrevious li .previous-one-img img {
	width: 75px;
	height: auto
}
.divPrevious li .previous-recent-title {
	margin-left: 85px
}
.divPrevious li .previous-recent-title h4 {
	margin-bottom: 0;
	font-weight: 400;
	font-size: 13px;
	line-height: 1.6
}
.divPrevious li .previous-recent-title span {
	color: #9A9A9A;
	font-size: 12px
}


</style>


    <div class="widget widget-tie divPrevious" id="a"  style="margin-left:0px">
      <h3>随机推荐</h3>
      <ul>
      
      <c:set var="index" value="1" />
      	<c:forEach items="${clst}" var="a"  varStatus="v">

	  <c:if test="${index<8  && not empty a.picaddress}">  
<li> 
          <div class="previous-one-img">
          <c:if test="${item == a.pdir}"><a target="_blank" rel="nofollow" href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}">
          <img src="${a.picaddress}" class="" title="${a.articletitle}" alt="${a.articletitle}" /></a></c:if>
          <c:if test="${item != a.pdir}"> <a target="_blank" rel="nofollow" href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}">
          <img src="${a.picaddress}" class="" title="${a.articletitle}" alt="${a.articletitle}" /></a></c:if>
          </div>
          
          <div class="previous-recent-title">
            <h4 class="title">
             <c:if test="${item == a.pdir}"><a target="_blank" href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}">
           ${a.articletitle}</a></c:if>
          <c:if test="${item != a.pdir}"> <a target="_blank" href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}">
           ${a.articletitle}</a></c:if>
           </h4>
          <hr style="padding-bottom:5px;margin-bottom:10px">
          
           </div>
           </li>
				<c:set var="index" value="${index+1}" />
	</c:if>						

        </c:forEach>
        
           
      
      
              </ul>
    </div>



</div>
-->



</div>
<!--col-lg-12  end  -->

   <div class="clear"></div>
 
</div>
					</div>



            </div>               

                     
   

           

        
    
    
	<div class="clear"></div>
	
 <%@ include file="/template/kwz/footer.jsp"%> 
   
        
   



    <!-- 全局js -->
    <script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/kwz/js/content.js?v=1.0.0"></script>
   <script src="/template/kwz/kjs/common.js"></script>
   <script src="/template/kwz/kjs/portal.js"></script>
 
</body>

</html>
