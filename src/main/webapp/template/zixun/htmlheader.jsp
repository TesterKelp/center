 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>

<!--top begin-->
<div class="topbar">
  <ul>
    <li>微信客服<img src="/template/zixun/images/wxkf.jpg"></li>
    <li>微信公众号<img src="/template/zixun/images/wxgzh.jpg"></li>
    <li><a href="/" target="_blank">关于我们</a></li>
  </ul>
</div>
<div class="box">
  <div class="logo"> <a href="/" target="_blank" title="新闻信息资讯平台网站模板_青于蓝原创模板_杨青青博客"><img src="/template/zixun/images/logo.png" alt="新闻信息资讯平台网站模板_青于蓝原创模板_杨青青博客"></a> </div>
  <div class="search_box">
    <div class="search">
      <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
        <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
        <input name="show" value="title" type="hidden">
        <input name="tempid" value="1" type="hidden">
        <input name="tbname" value="news" type="hidden">
        <input name="Submit" class="input_submit" value="搜索" type="submit">
      </form>
    </div>

    <div class="hot_search"><span>热门搜索:</span>
      <ul>
        <li><a href="/" target="_blank" title="">个人博客</a></li>
        <li><a href="/" target="_blank" title="">个人博客模板</a></li>
        <li><a href="/" target="_blank" title="">企业网站模板</a></li>
        <li><a href="/" target="_blank" title="">杨青青个人博客</a></li>
        <li><a href="/" target="_blank" title="">阿里云优惠链接</a></li>
      </ul>
    </div>
   
  </div>
</div>
<div class="topnav">
  <nav>
    <ul id="starlist">
      <li><a href="/index.do">首页</a></li>
		<li><a href="/${item}/index.${kuo}">频道首页</a></li>
			<c:forEach items="${menuList}" var="a" varStatus="status">
				<li><a href="/${item}/${a.catedirectory}/list_1.${kuo}">${a.catename}</a></li>
			</c:forEach> 
		</ul>
  </nav>
  <h2 id="mnavh"><span class="navicon"></span></h2>
  <span class="sidebtn"></span> </div>
<!--top end-->
