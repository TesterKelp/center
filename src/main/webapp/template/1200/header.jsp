<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>


<div class="g-top-full">
<div class="g-box-1200">
<p class="f-fl">
<a href='/${m.item_directorie}/portal.do' style="color:#CCCCCC">首页</a><c:forEach items="${menuList}" var="a" varStatus="status">|<a href="/${m.item_directorie}/${a.catedirectory}/index.do" style="color:#CCCCCC" >${a.catename}</a></c:forEach>
</p>
</div>
</div>


<div class="g-nav-full">
<div class="g-box-1200">
<a href="/" class="u-logo f-fl"><img src="/template/1200/images/logo.png" alt="腾牛网-实用的免费软件下载-安全的QQ软件下载站"></a>
<ul class="m-nav f-fl" id="defect">

<li><a href="/module/usercenter/register.jsp" target="_blank">用户注册</a></li>
<li><a href="/module/usercenter/login.jsp" target="_blank">用户登录</a></li>

<!-- <li><a href="/cmslist/r_3_1.html" target="_blank">腾讯技术</a></li>
<li><a href="/cmslist/r_26_1.html" target="_blank">手游攻略</a></li>
<li><a href="/cmslist/r_32_1.html" target="_blank">软件教程</a></li>
 -->
</ul>
<div class="m-qqtnsou-jk f-fr" id="form_top">
<div id="topqqsou">
<input type="text" class="keyword_input u-search-input " id="keyword" name="q" placeholder="请输入你要搜索的内容">
<a href="javascript:;" class="schbtn u-search-btn">搜索</a>
</div>
</div>
</div>
</div>
<!-- 
<div class="g-nav-full">
<div class="g-box-1200">
<a href="https://www.qqtn.com/" class="u-logo f-fl"><img src="https://www.qqtn.com/skin/new2013/images/logo.png" alt="实用的软件测试文章站点"></a>
<span class="tip tiptwo f-fl"></span>
<div id="topForm" class="f-fr">
<dl>
<dt>签名<i></i></dt>
<dd data-type="签名" style="display: none;">签名</dd>
<dd data-type="网名" style="display: none;">网名</dd>
<dd data-type="头像" style="display: none;">头像</dd>
<dd data-type="其他" style="display: none;">其他</dd>
</dl>
<input class="keyword_input u-search-input" id="keyword" name="q" placeholder="输入关键词，比如：男生、女生、情侣" maxlength="10" autocomplete="off" type="text">
<a href="javascript:;" class="schbtn u-search-btn">搜索</a>
</div>
</div>
</div>
 -->








<!-- 
<div class="g-navlist" style="background-color: #20aef0;">
<ul class="g-box-1200" >
 
<li><a href="https://www.qqtn.com/">网站首页</a></li>
<li><a href="https://www.qqtn.com/pc/">软件下载</a></li>
<li><a href="https://www.qqtn.com/az/">安卓下载</a></li>
<li><a href="https://www.qqtn.com/ios/">苹果下载</a></li>
<li class="hover"><a href="https://www.qqtn.com/zhuanti/rjhj/">专题合集</a></li>
<li><a href="https://www.qqtn.com/default_Cms.html">资讯教程</a></li>
<li><a href="https://www.qqtn.com/xcx/">小程序</a></li>
<li><a href="https://www.qqtn.com/qm/">QQ个性</a></li>
<li class="m-txzq"><a href="https://www.qqtn.com/zjbb.html">装机必备</a></li>
		  <c:if test="${m.topic == 1 }"><a href="/${m.item_directorie}/topic.do">专题</a></c:if><a href="/${m.item_directorie}/tag/index.do">tag标签</a>
-->
<!-- 
<li style="width:50px;"><a href="/${m.item_directorie}/portal.do" style="font-size:14px;">首页</a> </li>
<c:forEach items="${menuList}" var="a" varStatus="status">
<li style="width:70px;" ><a href="/${m.item_directorie}/${a.catedirectory}/index.do" style="font-size:14px;">${a.catename}</a> </li>
</c:forEach>
</ul>
</div>
-->



