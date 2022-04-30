<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>

<div class="mwall">
<!--百度自动推送-->
<script>
(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>

<!--百度自动推送-->
<div id="webhead">
	<div id="toplogin">
		<span>
		<script type="text/javascript" src="/template/960/js/date.js"></script>
		</span>
		<script language=javascript src="/template/960/js/wealth.js"></script>
	<div id="clear"></div>
	</div>
<div style="height:65px;"><div id="logo"><a href="http://www.hao828.com/"><img src="/template/960/imags/2013070954425209.gif" alt="hao828.com " /></a>
</div>
<div id="banner"><script src="http://www.5588128.com/pageads/c.php?c=34&w=468&h=60&n=1"></script></div>
<div id="topright">
		<div class="topright3">
		<li style="text-align:right;width:33%"><a href="javascript:void(0);" onclick="SetHome(this,'http://www.hao828.com');">设为首页</a></li>
		<li style="text-align:right;width:33%"><a href="javascript:addfavorite()">加入收藏</a></li>
		<c:if test="${m.topic == 1 }"><li style="text-align:center;width:33%"><a id="/${m.item_directorie}/topic.do">专题</a></li></c:if>
		<li style="text-align:right;width:33%"><a href="/${m.item_directorie}/tag/index.do">tag标签</a></li>
		<li style="text-align:right;width:33%"><a href="/sitemap.do">站点导航</a></li>
		
		</div><div id="clear"></div>
		<div class="textad">		</div>
</div></div>
</div>


	<div id="clear"></div>
	
	
	
<div id="webmenu">
	<ul>
	<!-- 
<li> <a href="/" target="_top">首 页</a></li><li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)")>| <a href="/class.asp?id=10" target="_top">实用查询</a><div>
<a href="/class.asp?id=3" target="_top">日常生活</a>
<a href="/class.asp?id=4" target="_top">电脑网络</a>
<a href="/class.asp?id=1" target="_top">交通地理</a>
<a href="/class.asp?id=5" target="_top">金融理财</a>
<a href="/class.asp?id=6" target="_top">教育学习</a>
<a href="/class.asp?id=22" target="_top">星座算命</a>
<a href="/class.asp?id=21" target="_top">站长查询</a>
<a href="/class.asp?id=20" target="_top">健康医疗</a>
<a href="/class.asp?id=56" target="_top">其他信息</a>
</div>
</li><li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)")>| <a href="/class.asp?id=48" target="_top">旗下产品</a><div>
<a href="/class.asp?id=49" target="_top">电脑软件</a>
<a href="/class.asp?id=50" target="_top">手机应用</a>
<a href="/class.asp?id=63" target="_top">Web系统</a>
</div>
</li><li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)")>| <a href="/class.asp?id=11" target="_top">在线应用</a><div>
<a href="/class.asp?id=13" target="_top">实用工具</a>
<a href="/class.asp?id=34" target="_top">站长应用</a>
<a href="/class.asp?id=32" target="_top">转换工具</a>
<a href="/class.asp?id=31" target="_top">图像工具</a>
<a href="/class.asp?id=30" target="_top">网页工具</a>
<a href="/class.asp?id=29" target="_top">加密解密</a>
<a href="/class.asp?id=28" target="_top">媒体工具</a>
<a href="/class.asp?id=12" target="_top">文本工具</a>
<a href="/class.asp?id=14" target="_top">时间日期</a>
<a href="/class.asp?id=35" target="_top">通讯聊天</a>
<a href="/class.asp?id=33" target="_top">其他应用</a>
</div>
</li><li>| <a href="http://tts.hao828.com/" target="_blank">语音合成</a></li>
<li>| <a href="/Game/FlashGame/" target="_top">在线游戏</a></li>
<li>| <a href="http://www.hao828.com/ChaXun/aizheng/" target="_top">癌症健康</a></li>
<li>| <a href="http://www.woaixiao.com/" target="_blank">搞笑幽默</a></li>
<li>| <a href="http://www.521rmb.com/" target="_blank">成功励志</a></li>
<li>| <a href="http://www.14a.cn/" target="_top">伏羲算命</a></li>
<li>| <a href="http://www.txttool.com/" target="_blank">文本工具</a></li>
<li>| <a href="http://www.1231818.com/" target="_top">快捷搜索</a></li>	
 -->
<c:forEach items="${menuList}" var="a" varStatus="status"  begin="1" end="15" step="1"><li><a href="/${m.item_directorie}/${a.catedirectory}/index.do" >${a.catename}</a>|</li>	</c:forEach>
</ul>


		


</div>

<div id="clear"></div><div class="mw" style="margin-top:3px;"></div>

 