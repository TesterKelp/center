<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>${member.username}测试博客</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="/blog/t3/res/layui/css/layui.css">
  <link rel="stylesheet" href="/blog/t3/res/css/global.css">
</head>
<body>

<div class="header">
  <div class="main">
    <div class="nav">
    
    <a href="/blog/${member.userid}.do">首页</a>
    <c:forEach items="${ldt}" var="a" varStatus="status">
							<a href="/blog/${member.userid}/${a.blogcateid}/1.do">${a.blogcatename} </a>
						</c:forEach> 
  
    </div>
    
    <div class="nav-user">
      <!-- 未登入状态 
      <a class="unlogin" href="user/login.html"><i class="iconfont icon-touxiang"></i></a>
      <span><a href="user/login.html">登入</a><a href="user/reg.html">注册</a></span>
      <p class="out-login">
        <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
        <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
      </p>   
      -->
      <!-- 登入后的状态 -->
      <!-- 
      <a class="avatar" href="user/index.html">
        <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0">
        <cite>贤心</cite>
        <i>VIP2</i>
      </a>
      <div class="nav">
        <a href="/user/set/"><i class="iconfont icon-shezhi"></i>设置</a>
        <a href="/user/logout/"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退了</a>
      </div> -->
      
    </div>
  </div>
</div>


<div class="main layui-clear">
  <div class="wrap">
    <div class="content">
      <ul class="fly-list">
      	<c:forEach items="${lst}" var="p"  begin="1"  end="10" step="1">
        <li class="fly-list-li"  style="height:120px;">
          <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do" class="fly-list-avatar1"  style="float:left">
            <img src="${p.picaddress}" style="width:200px;height:100px">
          </a>
          <h2 class="fly-tip" style="margin-left:220px;">
            <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">${p.articletitle} </a>
          </h2>
          <p style="margin-left:220px;">
            
            <span class="fly-list-hint"> 
      
               <c:if test="${fn:length(p.articleitd)>100 }">${ fn:substring( p.articleitd ,0,100)} ...</c:if>
        <c:if test="${fn:length(p.articleitd)<=100 }">${  p.articleitd }</c:if>
            </span>
             
            
          </p>
        </li>
        		</c:forEach>
        
        
    
        
        
        
        
        
        
        
        
      </ul>
      

      
    </div>
  </div>
  <div class="edge">
    
  
<style>


.r_box { width: 100%; float: right ;}
.r_box h2 { color: #333; font-size: 14px; line-height: 30px; padding-left: 20px; background: #f8f8f8;    border-bottom: 1px solid #ddd;  }
.r_box div { background: #fff; margin-bottom: 20px; overflow: hidden ;border: 1px solid #ddd; }
.r_box div ul { padding: 10px; overflow: hidden }
.r_box h2 { color: #333; font-size: 14px; line-height: 30px; padding-left: 20px; background: #f8f8f8;    border-bottom: 1px solid #ddd;  }
.about_me img { width: 100%; border-radius: 10% }
.about_me p { line-height: 24px; font-size: 14px }
.about_me i { width: 120px; float: left; clear: left; margin-right: 10px; height: 90px; overflow: hidden }






/*news_box*/
.news_box { width: 100% ;float: left}
.news_box li { width: 91%; float: left; background:#fff; padding: 15px; overflow: hidden; color: #797b7c;padding-top:15px; margin-bottom: 10px;border: 1px solid #ddd;}
.news_box li:nth-child(2n) { float: left }
.news_box li h3 { font-size: 15px; font-weight: normal; line-height: 25px; text-shadow: #FFF 1px 1px 1px; height: 80px; display: table-cell; vertical-align: middle; }
.news_box li h3 a { color: #222 }
.news_box li img { width: 100%; -webkit-transition: all 0.5s; -moz-transition: all 0.5s; transition: all 0.5s; }
.news_box li i { width: 120px; display: block; height: 80px; overflow: hidden; float: left; margin-right: 20px }
.news_box li:hover img { transform: scale(1.05) }
.news_box li:hover h3 a { color: #3690cf; }




</style>



<aside class="r_box" >
      <div class="about_me">
        <h2>博主简介</h2>
        <ul>
          <i><img src="${member.useravatar}"></i>
          <p>   ${blogInfo.introduce}<br>
          <a href="#">创建时间：${blogInfo.blogtime}</a><br>
		  <a href="#">博主昵称：${member.username}</a><br>
          
          
          </p>
        </ul>
      </div>
      
      
  
								
								
      
      
      
      
      
      

      
      
 </aside>
   
   <div style="clear:both">  </div> 
   
   
   
   
   
     <div class="news_box">
    <ul>
   
      
     
      
      	<c:forEach items="${topiclist}" var="t">
				   
				   <li><i><a href="/${t.item_directorie}/topiccover_${t.topicid}.do"  target="_blank"><img src="${t.topicimage}"></a></i>
        <h3><a href="/${t.item_directorie}/topiccover_${t.topicid}.do"  target="_blank">${t.topicname} <br>${t.topicintro}</a></h3>
      </li>  
				   
				   
				</c:forEach> 
      
      
      
          </ul>
  </div>
   
   
   
   
   
      <div style="clear:both">  </div> 
   
   
   
   

    
    
    
    
    
    
 
    
    
    
    
    
    
    
    
    

    

    

  </div>
</div>

<div class="footer">
  <p>${username}测试博客 2016 &copy; </p>
  <p>

  </p>
</div>
<script src="../res/layui/layui.js"></script>
<script>
layui.cache.page = '';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: '../res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "1.0.0"
  ,base: '../res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>

</body>
</html>