<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>分页列表</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="t3/res/layui/css/layui.css">
  <link rel="stylesheet" href="t3/res/css/global.css">
</head>
<body>

<div class="header">
  <div class="main">
  
    <a class="logo" href="/" title="Fly">Fly社区</a>
    <div class="nav">
    
    <!--  
      <a class="nav-this" href="index.html">
        <i class="iconfont icon-wenda"></i>问答
      </a>
      <a href="http://www.layui.com/" target="_blank">
        <i class="iconfont icon-ui"></i>框架
      </a>
       -->
      
      
            <a href="Blog.do?userid=${userid}">首页</a>
          				<c:forEach items="${ldt}" var="a" varStatus="status">
							<a href="Cate.do?userid=${userid}&&cateid=${a.blogcateid}&&pageno=1">${a.blogcatename} </a>
						</c:forEach>
      
      
      
      
      
    </div>
    
    <div class="nav-user">
      <!-- 未登入状态 
      <a class="unlogin" href="user/login.html"><i class="iconfont icon-touxiang"></i></a>
      <span><a href="user/login.html">登入</a><a href="user/reg.html">注册</a></span>
      <p class="out-login">
        <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
        <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
      </p>   -->
      
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
    <div class="content" style="margin-right:0">
      <div class="fly-tab">
               <!-- <span>
      <a href="Blog.do?userid=${userid}">首页</a>
          				<c:forEach items="${ldt}" var="a" varStatus="status">
							<a href="Cate.do?userid=${userid}&&cateid=${a.blogcateid}&&pageno=1">${a.blogcatename} </a>
						</c:forEach>
        </span>
        
 
        <form action="http://cn.bing.com/search" class="fly-search">
          <i class="iconfont icon-sousuo"></i>
          <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
        </form>
        <a href="add.html" class="layui-btn jie-add">发布问题</a>
        
         -->
        
      </div>
    
      <ul class="fly-list">


        
        
        
        
                				<c:forEach items="${cl}" var="p">
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="t3/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="Content.do?userid=${userid}&&blogid=${p.articleid}">${p.articletitle} </a>
          </h2>
          <p>
            <span><a href="user/home.html"> ${username}</a></span>
        <!--    <span> ${p.creattime}</span>
            <span>layui框架综合</span>  -->
            <span class="fly-list-hint"> 
              <!--
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> -->
              ${p.creattime}
            </span>
          </p>
        </li>
        		</c:forEach>
        

     
      </ul>
      
      <!-- <div class="fly-none">并无相关数据</div> -->
    
      <div style="text-align: center">
        <div class="laypage-main"><span class="laypage-curr">1</span><a href="/jie/page/2/">2</a><a href="/jie/page/3/">3</a><a href="/jie/page/4/">4</a><a href="/jie/page/5/">5</a><span>…</span><a href="/jie/page/148/" class="laypage-last" title="尾页">尾页</a><a href="/jie/page/2/" class="laypage-next">下一页</a></div>
      </div>
      
    </div>
  </div>
</div>

<div class="footer">
  <p>${username}测试博客 2016 &copy; </p>
  <p>

  </p>
</div>
<script src="t3/res/layui/layui.js"></script>
<script>
layui.cache.page = 'jie';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: 't3/res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "1.0.0"
  ,base: 't3/res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>

</body>
</html>