<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<meta name="Author" content="">
<title>${m.item_name} </title>
<meta name="keyword" content="${m.keyword}"/>
<meta name="description" content="${m.depict}"/>

<link href="/template/green/css/css_whir.css" rel="stylesheet" type="text/css" />
<script src="/template/green/Script/jquery-1.4.2.min.js" type="text/javascript"></script>
<!--[if IE 6]>
<script src="Script/pngAlaph.js"></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

</head>
<body>
    
<%@ include file="/template/green/htmlheader.jsp"%>
    

    
    <!--Star-->
    <div class="Content_home">
    
              <!--广告图片-->
              <div class="H_adBox">
                   <div class="photo">
                   <ul>

					<c:forEach items="${clst}" var="a" varStatus="status">
						<c:if test="${not empty a.picaddress}">
							<li><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}"><img src="${a.picaddress}" /></a><span><a
									href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></span></li>
						</c:if>
					</c:forEach>

				</ul>
                   </div>
                   <div class="hd">
                   <ul>
                          <li></li>
                          <li></li>
                          <li></li>
                          <li></li>
                   </ul>
                   </div>
                   <script type="text/javascript" src="/template/green/Script/slideBox.js"></script>
                   <script type="text/javascript" language="javascript">jQuery(".H_adBox").slide({mainCell:".photo ul",autoPlay:true,delayTime:3000});</script>
              </div>
              <!--广告图片 End-->
              <!--医院新闻-->
              <div class="H_hospitalNews">
                    <h4 class="H_title02"><a href="#" class="more"></a><b>频道推荐</b></h4>
                    <ul>
                            
                            <c:set var="index" value="1" />
                            <c:forEach items="${clst}" var="a" varStatus="status" >
									<c:if test="${a.articletype=='4' and index<'7'}">
									<li><span>${a.creattime}</span><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></li>
									<c:set var="index" value="${index+1}" />
									</c:if>
								</c:forEach>
                            
                    </ul>
              </div>
              <!--医院新闻 End-->
              <!--医院公告-->
              <div class="H_hospitalBulletin">
                    <h4 class="H_title02"><b>用户中心</b></h4>
                    <ul>
                            
                             
                          <c:if test="${islogin == 1}">  </c:if>
							<table cellpadding="0" cellspciong="1"   id="login-form-login"  style="display: none" >
							  <tr> <td ><a href="/module/usercenter/personinfo.jsp">用户中心 </a></td> <td> </td> </tr>
							<tr><td ><a href="/blog/MyBlog.do">我的博客 </a></td><td> </td> </tr>
                             <tr><td ><a href="javascript:void(0);"  onclick="userlogout()">退出登录</a></td> <td> </td></tr>
							</table>
							
							
							
                             
                              <c:if test="${islogin != 1}"> </c:if> 
                       		 <table width="85%" border="0" cellspacing="0" cellpadding="0" class="Advisory_table"  id="login-form-logout"  style="display: none">
                              <tr><td class="name">姓　　名<span>*</span></td>
                                <td><input id="j_username" type="text" class="text"  style=" width:150px" /></td>
                              </tr>
                              <tr><td class="name">密　　码<span>*</span></td>
                                <td><input id="j_password" type="password" class="text" style=" width:150px" /></td>
                              </tr>
                              <tr><td class="name"></td><td id="info"></td>
                              </tr>
                              <tr><td class="name"><label><input id="rememberMe" type="checkbox" value="true" />记住登录 </label></td>
                                <td><input onclick="userLogin()"  type="button" value="用户登录" class="btn01"/> <a href="/module/usercenter/register.jsp" target="_blank" ><input name="input7" type="button" value="用户注册" class="btn02"/></a></td>
                              </tr>
                              </table>     
                             
                             
                             
                             
                             
                             
                             
                             
                             
                    </ul>
                    
                    
                    
                    
                    
                    
              </div>
              <!--医院公告 End-->
              <div class="space10"></div>
           
              
                <div class="zhuanti whitebg">
  <!--  <h2 class="htitle"> <span class="hnav"><a href="/">原创模板</a><a href="/">古典</a><a href="/">清新</a><a href="/">低调</a></span>笑笑图片</h2> -->
        <h4 class="H_title02"><b>笑笑图</b></h4>
      
      <ul>




				<c:set var="index" value="1" />
				<c:forEach items="${clst}" var="a" varStatus="status">
					<c:if test="${not empty a.picaddress}">
						<c:if test="${a.articletype=='6' and index<'7'}">
							<li><i class="ztpic"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank"><img
										src="${a.picaddress}"></a></i> <b align="center"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a></b>
							</li>
							<c:set var="index" value="${index+1}" />
						</c:if>
					</c:if>
				</c:forEach>



			</ul>
    </div>
              
              
              
              
              
              <!--专家介绍 End-->
              <div class="space10"></div>
              <!--广告链接-->
              <div class="H_adLink">
              
         
                   <script type="text/javascript">var jd_union_pid="3002507288";var jd_union_euid="";</script><script type="text/javascript" src="//ads-union.jd.com/static/js/union.js"></script>
                    
              </div>
              <!--广告链接 End-->
              <div class="space10"></div>
            
              
           <c:forEach items="${menuList}" var="aa" varStatus="sta">
						<c:set var="index" value="1" />
          
           <c:if test="${sta.index % 3 == 0 }"> <div class="H_health"><h4 class="H_title"><a href="#" class="more"></a><b>${aa.catename}</b></h4>    </c:if> 
           <c:if test="${sta.index % 3 == 1 }"> <div class="H_patient"><h4 class="H_title"><a href="#" class="more"></a><b>${aa.catename}</b></h4>   </c:if> 
           <c:if test="${sta.index % 3 == 2 }"> <div class="H_interact"> <h4 class="H_title02"><a href="#" class="more"></a><b>${aa.catename}</b></h4>  </c:if> 
           
            <ul>
           						<c:forEach items="${clst}" var="a" varStatus="status">
									<c:if test="${index<11}">
										<c:if test="${aa.catename == a.catename }">
                                 
						           <li ><a
									href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title="${a.articletitle}"
									class="title">${a.articletitle}</a></li>
								
											<c:set var="index" value="${index+1}" />
										</c:if>
									</c:if>
								</c:forEach>
           
           </ul>
           </div>
          <c:if test="${sta.index % 3 == 2 }">    <div class="space10"></div>  </c:if> 
           
           </c:forEach>
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
    <div class="space35"></div>
    </div>
    <!--End-->
    
<%@ include file="/template/green/htmlfooter.jsp"%>
    
    <script type="text/javascript" language="javascript">
       jQuery("#nav1").attr("class","onnav");
    </script>
    
  
    <script src="/template/green/js/green.js" type="text/javascript"></script>
    
</body>
</html>
