<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>


<div class="head" id="head">
<div class="head_m">
<div class="f_r" id="destoon_member">欢迎，<span  id="def">客人</span> |  
<a href="/sitemap.do">网站地图</a>|
<a href="/index.do">首页</a>|
<c:if test="${m.topic == 1 }"><a href="/${m.item_directorie}/topic.do">专题</a></c:if>| 
<a href="/${m.item_directorie}/tag/index.do">tag标签</a>|
</div>

<div class="head_l">
<ul>
<li class="h_fav"><script type="text/javascript">addFav('收藏本页');</script>
<a href="http://www.xiaowangzhan.net/" title="免费起名，软件测试，趣味问题" rel="sidebar" onclick="if(UA.indexOf('chrome') != -1){alert('请按快捷键Ctrl+D收藏本页，谢谢');return false;}window.external.addFavorite(this.href, this.title);return false;">收藏本页</a></li>
</ul>
</div>
</div>
</div>
	        
<div style="height:59px;padding-top:0px; width:1280px; margin:0 auto;">
<div style="height:80px;padding-top:0px; width:300px; float:left;background:#fff">
<img src="/template/wz/top/images/99.jpg" ">
</div>
<div style="height:80px;padding-top:10px; width:680px; float:left;background:#fff">
 <div class="search">
  <form action="/${m.item_directorie}/articleSeach.do" method="GET" accept-charset="UTF-8" onsubmit="document.charset='utf-8';">
            <input type="text" placeholder="请输入..." name="word" id="word" value=""   style="width:300px;" />
            <button  type="submit"  style="width:100px;"><i>搜索</i></button>
      </form>      
 </div>
</div>
<div style="height:80px;padding-top:1px; width:300px; float:left;text-align:left ;background:#fff">
<img src="/pic/wx/wdwx.jpg" style="width:80px;height:79px;float:left">
<img src="/pic/wx/wxszjh.jpg" style="width:80px;height:79px;float:left">
</div>

</div>
	
<br>
<div id="defect" style=" width:1280px; padding-left:2px;" >
<div style=" width:1280px; margin:0 auto;"  id="def">
	<div class="defect_top"    >
	 <a href="/${m.item_directorie}/portal.do" style="font-size:15px;" >${m.item_name}  </a><span style="color: #fff"> | </span>
	<c:forEach items="${menuList}" var="a" varStatus="status"><a href="/${m.item_directorie}/${a.catedirectory}/index.do" style="font-size:15px;" >${a.catename}</a><span style="color: #fff"> | </span></c:forEach>
	</div>
 </div>
 </div>