<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>${title}</title>
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
    
            <a href="Blog.do?userid=${userid}">首页</a>
          				<c:forEach items="${ldt}" var="a" varStatus="status">
							<a href="Cate.do?userid=${userid}&&cateid=${a.blogcateid}&&pageno=1">${a.blogcatename} </a>
						</c:forEach>
    
    
    
      <!--
      <a class="nav-this" href="index.html">
        <i class="iconfont icon-wenda"></i>问答
      </a>
      <a href="http://www.layui.com/" target="_blank">
        <i class="iconfont icon-ui"></i>框架
      </a>
-->
    </div>
    
    <div class="nav-user">
      <!-- 未登入状态 
      <a class="unlogin" href="user/login.html"><i class="iconfont icon-touxiang"></i></a>
      <span><a href="user/login.html">登入</a><a href="user/reg.html">注册</a></span>
      <p class="out-login">
        <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
        <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
      </p>  --> 
      
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
       <div class="fly-tab">
          <!--  <span>
      <a href="Blog.do?userid=${userid}">首页</a>
          
          				<c:forEach items="${ldt}" var="a" varStatus="status">
							<a
								href="Cate.do?userid=${userid}&&cateid=${a.blogcateid}&&pageno=1">
									${a.blogcatename} </a>
						</c:forEach>
	  
          
          
          
        </span>
        
     
        <form action="http://cn.bing.com/search" class="fly-search">
          <i class="iconfont icon-sousuo"></i>
          <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
        </form>
        <a href="add.html" class="layui-btn jie-add">发布问题</a>
        
         -->
        
      </div>
      <h1>${title}</h1>
      <div class="fly-tip fly-detail-hint" data-id="{{rows.id}}">
 <!-- 
        <span class="fly-tip-stick">置顶帖</span>
        <span class="fly-tip-jing">精帖</span>
        
        <span>未结贴</span>

        -->
        <!-- <span class="fly-tip-jie">已采纳</span> -->
        
        <!-- <span class="jie-admin" type="del" style="margin-left: 20px;">删除</span>
        <span class="jie-admin" type="set" field="stick" rank="1">置顶</span> 
        <span class="jie-admin" type="set" field="stick" rank="0" style="background-color:#ccc;">取消置顶</span>
        <span class="jie-admin" type="set" field="status" rank="1">加精</span> 
        <span class="jie-admin" type="set" field="status" rank="0" style="background-color:#ccc;">取消加精</span> -->
         <!-- 
        <div class="fly-list-hint"> 
          <i class="iconfont" title="回答">&#xe60c;</i> 517
          <i class="iconfont" title="人气">&#xe60b;</i> 98032
        </div>
         -->
      </div>
      <div class="detail-about">
        <a class="jie-user" href="">
          <img src="${useravatar}" alt=""> 
          <cite>
            ${username}
            <em>${creattime}</em>
          </cite>
        </a>
        <!-- 
        <div class="detail-hits" data-id="{{rows.id}}">
          <span style="color:#FF7200">悬赏：20飞吻</span>
          <span class="jie-admin" type="edit"><a href="/jie/edit/{{rows.id}}">编辑此贴</a></span>
        </div>
         -->
      </div>
      
      <div class="detail-body photos" style="margin-bottom: 20px;">
        
        
        ${content}
	
        

        
        <div  class="fly-ad" style="margin-top: 30px; height:90px; overflow: hidden;">
          
        </div>
      </div>
      
      <a name="comment"></a>
      <h2 class="page-title">热忱回答<span>（<em id="jiedaCount">18</em>）</span></h2>

      <ul class="jieda photos" id="jieda">
        <li data-id="12" class="jieda-daan">
          <a name="item-121212121212"></a>
          <div class="detail-about detail-about-reply">
            <a class="jie-user" href="">
              <img src="../../res/images/avatar/default.png" alt="">
              <cite>
                <i>纸飞机</i>
                <!-- <em>(楼主)</em>
                <em style="color:#5FB878">(管理员)</em>
                <em style="color:#FF9E3F">（活雷锋）</em>
                <em style="color:#999">（该号已被封）</em> -->
              </cite>
            </a>
            <div class="detail-hits">
              <span>3分钟前</span>
            </div>
            <i class="iconfont icon-caina" title="最佳答案"></i>
          </div>
          <div class="detail-body jieda-body">
            <p>么么哒</p>
          </div>
          <div class="jieda-reply">
            <span class="jieda-zan zanok" type="zan"><i class="iconfont icon-zan"></i><em>12</em></span>
            <span type="reply"><i class="iconfont icon-svgmoban53"></i>回复</span>
            <!-- <div class="jieda-admin">
              <span type="edit">编辑</span>
              <span type="del">删除</span>
              <span class="jieda-accept" type="accept">采纳</span>
            </div> -->
          </div>
        </li>
        
        <li data-id="13">
          <a name="item-121212121212"></a>
          <div class="detail-about detail-about-reply">
            <a class="jie-user" href="">
              <img src="../../res/images/avatar/default.png" alt="">
              <cite>
                <i>香菇</i>
                <em style="color:#FF9E3F">活雷锋</em>
              </cite>
            </a>
            <div class="detail-hits">
              <span>刚刚</span>
            </div>
          </div>
          <div class="detail-body jieda-body">
            <p>蓝瘦</p>
          </div>
          <div class="jieda-reply">
            <span class="jieda-zan" type="zan"><i class="iconfont icon-zan"></i><em>0</em></span>
            <span type="reply"><i class="iconfont icon-svgmoban53"></i>回复</span>
            <div class="jieda-admin">
              <span type="edit">编辑</span>
              <span type="del">删除</span>
              <span class="jieda-accept" type="accept">采纳</span>
            </div>
          </div>
        </li>
        
        <!-- <li class="fly-none">没有任何回答</li> -->
      </ul>
      
      <div class="layui-form layui-form-pane">
        <form action="/jie/reply/" method="post">
          <div class="layui-form-item layui-form-text">
            <div class="layui-input-block">
              <textarea id="L_content" name="content" required lay-verify="required" placeholder="我要回答'"  class="layui-textarea fly-editor" style="height: 150px;"></textarea>
            </div>
          </div>
          <div class="layui-form-item">
            <input type="hidden" name="jid" value="{{rows.id}}">
            <button class="layui-btn" lay-filter="*" lay-submit>提交回答</button>
          </div>
        </form>
      </div>
      

  
  
  
  
  
  
  </div>
  
  
  

</div>


<!-- <h2 class="page-title">404</h2>
<div class="fly-none">该问题并不存在，可能已被删除</div> -->



<div class="footer">
  <p>${username}测试博客 2016 &copy; </p>
  <p>

  </p>
</div>
<script src="../../res/layui/layui.js"></script>
<script>
layui.cache.page = 'jie';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: '../../res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "1.0.0"
  ,base: '../../res/mods/'
}).extend({
  fly: 'index'
}).use('fly', function(){
  var fly = layui.fly;
  //如果你是采用模版自带的编辑器，你需要开启以下语句来解析。
  /*
  $('.detail-body').each(function(){
    var othis = $(this), html = othis.html();
    othis.html(fly.content(html));
  });
  */
});
</script>

</body>
</html>